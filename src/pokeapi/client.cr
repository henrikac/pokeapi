require "http/client"

# `PokeAPI::Client` handles requests to `pokeapi.co`.
class PokeAPI::Client
  # Requests `pokeapi.co` for a single item at the given *path*.
  #
  # Example:
  # ```
  # require "pokeapi"
  #
  # response = PokeAPI::Client.get("pokemon/bulbasaur")
  # ```
  def self.get(path : String) : HTTP::Client::Response
    if path.empty?
      raise ArgumentError.new("path is undefined")
    end

    path = path.strip(" /")

    if PokeAPI::CACHE.is_enabled?
      return get_response(path)
    end

    return HTTP::Client.get("https://pokeapi.co/api/v2/#{path}/")
  end

  # Requests `pokeapi.co` for *limit* items at the given *path*.
  #
  # Example:
  # ```
  # require "pokeapi"
  #
  # response = PokeAPI::Client.get("pokemon", 20, 0)
  # ```
  def self.get(path : String, limit : UInt32, offset : UInt32) : HTTP::Client::Response
    if path.empty?
      raise ArgumentError.new("path is undefined")
    end

    if limit == 0
      raise ArgumentError.new("limit must be greater than 0")
    end

    path = path.strip(" /")
    params = URI::Params.encode({"limit" => limit.to_s, "offset" => offset.to_s})
    uri = URI.new("https", "pokeapi.co", nil, "/api/v2/#{path}/", params)

    if PokeAPI::CACHE.is_enabled?
      return get_response(path, uri.query.to_s)
    end

    return HTTP::Client.get(uri)
  end

  private def self.get_response(path : String, query : String = "") : HTTP::Client::Response
    url = "https://pokeapi.co/api/v2/#{path}/"

    if !query.empty?
      url = "#{url}?#{query}"
    end

    if PokeAPI::CACHE.has_key?(url)
      cached_data = PokeAPI::CACHE.get(url)

      return HTTP::Client::Response.new(200, cached_data[:data])
    end

    response = HTTP::Client.get(url)

    PokeAPI::CACHE.add(url, response.body)

    return response
  end
end