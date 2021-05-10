require "./pokeapi/**"

# `PokeAPI` is a wrapper library for [PokéAPI](https://pokeapi.co/docs/v2)
module PokeAPI
  VERSION = "0.2.1"

  extend Berries
  extend Contests
  extend Encounters
  extend Evolution
  extend Games
  extend Items
  extend Locations
  extend Machines
  extend Moves
  extend Pokemon

  # Returns a list of items from the given *endpoint*.
  #
  # Example:
  # ```
  # require "pokeapi"
  #
  # genders = PokeAPI.resource("gender")
  # pokemons = PokeAPI.resource("pokemon", limit: 5, offset: 100)
  # ```
  def self.resource(endpoint : String, limit : UInt32 = 20, offset : UInt32 = 0) : Types::ResourceList
    if endpoint.empty?
      raise ArgumentError.new("endpoint is undefined")
    end

    response = PokeAPI::Client.get(endpoint, limit, offset)

    if response.success?
      return Types::ResourceList.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end
