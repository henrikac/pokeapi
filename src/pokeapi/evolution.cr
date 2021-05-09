require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Evolution` module contains methods to get data from the different
# endpoints in the Evolution group.
#
# NOTE: see https://pokeapi.co/docs/v2#evolution-section
module PokeAPI::Evolution
  # Returns a `PokeAPI::Types::EvolutionChain` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is 0
  def evolution_chain(id : UInt32) : PokeAPI::Types::EvolutionChain
    if id < 1
      raise ArgumentError.new("id must be greater than 0")
    end

    response = PokeAPI::Client.get("evolution-chain/#{id}")

    if response.success?
      return PokeAPI::Types::EvolutionChain.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::EvolutionTrigger` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired evolution trigger.
  #
  # Valid evolution triggers (2021-05-07):
  # ```
  # +----+----------+
  # | id |   name   |
  # +----+----------+
  # |  1 | level-up |
  # |  2 | trade    |
  # |  3 | use-item |
  # |  4 | shed     |
  # |  5 | other    |
  # +----+----------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def evolution_trigger(identifier : String | UInt32) : PokeAPI::Types::EvolutionTrigger
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("evolution-trigger/#{identifier}")

    if response.success?
      return PokeAPI::Types::EvolutionTrigger.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end