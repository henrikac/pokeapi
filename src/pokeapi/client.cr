require "http/client"

# `PokeAPI::Client` handles requests to `pokeapi.co`.
class PokeAPI::Client
  # Requests `pokeapi.co` for a single item at the given *path*.
  def self.get(path : String) : HTTP::Client::Response
    if path.empty?
      raise ArgumentError.new("path is undefined")
    end

    path = path.strip(" /")

    return HTTP::Client.get("https://pokeapi.co/api/v2/#{path}/")
  end

  # Requests `pokeapi.co` for *limit* items at the given *path*.
  def self.get(path : String, limit : Int32, offset : Int32) : HTTP::Client::Response
    if path.empty?
      raise ArgumentError.new("path is undefined")
    end

    if limit < 1
      raise ArgumentError.new("limit must be greater than or equal to 1")
    end

    if offset < 0
      raise ArgumentError.new("offset must be greater than or equal to 0")
    end

    path = path.strip(" /")

    params = URI::Params.encode({"limit" => limit.to_s, "offset" => offset.to_s})
    uri = URI.new("https", "pokeapi.co", nil, "/api/v2/#{path}/", params)
    return HTTP::Client.get(uri)
  end
end