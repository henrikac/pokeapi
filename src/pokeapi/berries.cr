require "./client"
require "./types/pokemon/**"

# The `Berries` module contains methods to get data from the different
# endpoints in the Berries group.
#
# NOTE: see https://pokeapi.co/docs/v2#berries-section
module Berries
  # Returns a `PokeAPI::Types::Berry` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired berry.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def berry(identifier : String | Int32) : PokeAPI::Types::Berry
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("berry/#{identifier}")

    if response.success?
      return PokeAPI::Types::Berry.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::BerryFirmness` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired berry firmness.
  #
  # Valid berry firmnesses (2021-05-07):
  # +----+------------+
  # | id |    name    |
  # +----+------------+
  # |  1 | very-soft  |
  # |  2 | soft       |
  # |  3 | hard       |
  # |  4 | very-hard  |
  # |  5 | super-hard |
  # +----+------------+
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def berry_firmness(identifier : String | Int32) : PokeAPI::Types::BerryFirmness
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("berry-firmness/#{identifier}")

    if response.success?
      return PokeAPI::Types::BerryFirmness.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::BerryFlavor` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired berry flavor.
  #
  # Valid berry flavors (2021-05-07):
  # +----+--------+
  # | id |  name  |
  # +----+--------+
  # |  1 | spicy  |
  # |  2 | dry    |
  # |  3 | sweet  |
  # |  4 | bitter |
  # |  5 | sour   |
  # +----+--------+
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than 1
  def berry_flavor(identifier : String | Int32) : PokeAPI::Types::BerryFlavor
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("berry-flavor/#{identifier}")

    if response.success?
      return PokeAPI::Types::BerryFlavor.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end