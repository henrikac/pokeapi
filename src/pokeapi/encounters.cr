require "./client"
require "./types/pokemon/**"

# The `Encounters` module contains methods to get data from the different
# endpoints in the Encounters group.
#
# NOTE: see https://pokeapi.co/docs/v2#encounters-section
module Encounters
  # Returns a `PokeAPI::Types::EncounterMethod` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired encounter method.
  # However, if no encounter method was found a `PokeAPI::Types::Error` is returned.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def encounter_method(identifier : String | Int32) : PokeAPI::Types::EncounterMethod | PokeAPI::Types::Error
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("encounter-method/#{identifier}")

    if response.success?
      return PokeAPI::Types::EncounterMethod.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end

  # Returns a `PokeAPI::Types::EncounterCondition` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired encounter condition.
  # However, if no encounter condition was found a `PokeAPI::Types::Error` is returned.
  #
  # Valid encounter conditions (2021-05-07):
  # +----+----------------+
  # | id |      name      |
  # +----+----------------+
  # |  1 | swarm          |
  # |  2 | time           |
  # |  3 | radar          |
  # |  4 | slot2          |
  # |  5 | radio          |
  # |  6 | season         |
  # |  7 | starter        |
  # |  8 | tv-option      |
  # |  9 | story-progress |
  # | 10 | other          |
  # +----+----------------+
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def encounter_condition(identifier : String | Int32) : PokeAPI::Types::EncounterCondition | PokeAPI::Types::Error
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("encounter-condition/#{identifier}")

    if response.success?
      return PokeAPI::Types::EncounterCondition.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end

  # Returns a `PokeAPI::Types::EncounterConditionValue` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired encounter condition value.
  # However, if no encounter condition value was found a `PokeAPI::Types::Error` is returned.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def encounter_condition_value(identifier : String | Int32) : PokeAPI::Types::EncounterConditionValue | PokeAPI::Types::Error
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("encounter-condition-value/#{identifier}")

    if response.success?
      return PokeAPI::Types::EncounterConditionValue.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end
end