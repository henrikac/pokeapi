require "./client"
require "./types/pokemon/**"

# The `Evolution` module contains methods to get data from the different
# endpoints in the Evolution group.
#
# NOTE: see https://pokeapi.co/docs/v2#evolution-section
module Evolution
  # Returns a `PokeAPI::Types::EvolutionChain` based on the given *id*.
  # However, if no evolution chain was found a `PokeAPI::Types::Error` is returned.
  #
  # An `ArgumentError` is raised if the id is lower than 1
  def evolution_chain(id : Int32) : PokeAPI::Types::EvolutionChain | PokeAPI::Types::Error
    if id < 1
      raise ArgumentError.new("id must be greater than or equal to 1")
    end

    response = PokeAPI::Client.get("evolution-chain/#{id}")

    if response.success?
      return PokeAPI::Types::EvolutionChain.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end

  # Returns a `PokeAPI::Types::EvolutionTrigger` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired evolution trigger.
  # However, if no evolution trigger was found a `PokeAPI::Types::Error` is returned.
  #
  # Valid evolution triggers (2021-05-07):
  # +----+----------+
  # | id |   name   |
  # +----+----------+
  # |  1 | level-up |
  # |  2 | trade    |
  # |  3 | use-item |
  # |  4 | shed     |
  # |  5 | other    |
  # +----+----------+
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def evolution_trigger(identifier : String | Int32) : PokeAPI::Types::EvolutionTrigger | PokeAPI::Types::Error
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("evolution-trigger/#{identifier}")

    if response.success?
      return PokeAPI::Types::EvolutionTrigger.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end
end