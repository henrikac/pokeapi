require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Locations` module contains methods to get data from the different
# endpoints in the Locations group.
#
# NOTE: see https://pokeapi.co/docs/v2#locations-section
module PokeAPI::Locations
  # Returns a `PokeAPI::Types::Location` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired location.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def location(identifier : String | UInt32) : PokeAPI::Types::Location
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("location/#{identifier}")

    if response.success?
      return PokeAPI::Types::Location.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::LocationArea` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired location area.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def location_area(identifier : String | UInt32) : PokeAPI::Types::LocationArea
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("location-area/#{identifier}")

    if response.success?
      return PokeAPI::Types::LocationArea.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PalParkArea` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pal park area.
  #
  # Valid pal park areas (2021-05-08):
  # ```
  # +----+----------+
  # | id |   name   |
  # +----+----------+
  # |  1 | forest   |
  # |  2 | field    |
  # |  3 | mountain |
  # |  4 | pond     |
  # |  5 | sea      |
  # +----+----------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pal_park_area(identifier : String | UInt32) : PokeAPI::Types::PalParkArea
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pal-park-area/#{identifier}")

    if response.success?
      return PokeAPI::Types::PalParkArea.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Region` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired region.
  #
  # Valid regions (2021-05-08):
  # ```
  # +----+------------+
  # | id |    name    |
  # +----+------------+
  # |  1 | kanto      |
  # |  2 | johto      |
  # |  3 | hoenn      |
  # |  4 | sinnoh     |
  # |  5 | unova      |
  # |  6 | kalos      |
  # |  7 | alola      |
  # |  8 | galar      |
  # +----+------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def region(identifier : String | UInt32) : PokeAPI::Types::Region
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("region/#{identifier}")

    if response.success?
      return PokeAPI::Types::Region.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end