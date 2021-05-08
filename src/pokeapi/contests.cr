require "./client"
require "./types/pokemon/**"

# The `Contests` module contains methods to get data from the different
# endpoints in the Contests group.
#
# NOTE: see https://pokeapi.co/docs/v2#contests-section
module Contests
  # Returns a `PokeAPI::Types::ContestType` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired contest type.
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
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def contest_type(identifier : String | UInt32) : PokeAPI::Types::ContestType
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("contest-type/#{identifier}")

    if response.success?
      return PokeAPI::Types::ContestType.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::ContestEffect` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is 0
  def contest_effect(id : UInt32) : PokeAPI::Types::ContestEffect
    if id < 1
      raise ArgumentError.new("id must be greater than 0")
    end

    response = PokeAPI::Client.get("contest-effect/#{id}")

    if response.success?
      return PokeAPI::Types::ContestEffect.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::SuperContestEffect` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is 0
  def super_contest_effect(id : UInt32) : PokeAPI::Types::SuperContestEffect
    if id < 1
      raise ArgumentError.new("id must be greater than 0")
    end

    response = PokeAPI::Client.get("super-contest-effect/#{id}")

    if response.success?
      return PokeAPI::Types::SuperContestEffect.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end