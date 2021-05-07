require "./pokeapi/**"

# TODO: Write documentation for `PokeAPI`
module PokeAPI
  VERSION = "0.1.0"

  extend Berries
  extend Contests
  extend Encounters
  extend Evolution
  extend Pokemon

  # Returns a list of items from the given *endpoint*.
  def self.resource(endpoint : String, limit : Int32 = 20, offset : Int32 = 0) : Types::ResourceList | Types::Error
    if endpoint.empty?
      raise ArgumentError.new("endpoint is undefined")
    end

    response = PokeAPI::Client.get(endpoint, limit, offset)

    if response.success?
      return Types::ResourceList.from_json(response.body)
    end

    error_json = {
      "status" => response.status_code,
      "message" => response.status_message
    }
    return Types::Error.from_json(error_json.to_json)
  end
end
