require "./client"
require "./types/pokemon/**"

# The `Contests` module contains methods to get data from the different
# endpoints in the Contests group.
#
# NOTE: see https://pokeapi.co/docs/v2#contests-section
module Contests
  # Returns a `PokeAPI::Types::ContestType` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired contest type.
  # However, if no contest type was found a `PokeAPI::Types::Error` is returned.
  #
  # Valid contest types (2021-05-07):
  # +----+--------+
  # | id |  name  |
  # +----+--------+
  # |  1 | cool   |
  # |  2 | beauty |
  # |  3 | cute   |
  # |  4 | smart  |
  # |  5 | tough  |
  # +----+--------+
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def contest_type(identifier : String | Int32) : PokeAPI::Types::ContestType | PokeAPI::Types::Error
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("contest-type/#{identifier}")

    if response.success?
      return PokeAPI::Types::ContestType.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end

  # Returns a `PokeAPI::Types::ContestEffect` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired contest effect.
  # However, if no contest effect was found a `PokeAPI::Types::Error` is returned.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def contest_effect(id : Int32) : PokeAPI::Types::ContestEffect | PokeAPI::Types::Error
    if id < 1
      raise ArgumentError.new("id must be greater than or equal to 1")
    end

    response = PokeAPI::Client.get("contest-effect/#{id}")

    if response.success?
      return PokeAPI::Types::ContestEffect.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end

  # Returns a `PokeAPI::Types::SuperContestEffect` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired super contest effect.
  # However, if no super contest effect was found a `PokeAPI::Types::Error` is returned.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def super_contest_effect(id : Int32) : PokeAPI::Types::SuperContestEffect | PokeAPI::Types::Error
    if id < 1
      raise ArgumentError.new("id must be greater than or equal to 1")
    end

    response = PokeAPI::Client.get("super-contest-effect/#{id}")

    if response.success?
      return PokeAPI::Types::SuperContestEffect.from_json(response.body)
    end

    return PokeAPI::Error.from_response(response)
  end
end