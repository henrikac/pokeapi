require "./client"
require "./types/pokemon/**"

# The `Games` module contains methods to get data from the different
# endpoints in the Games group.
#
# NOTE: see https://pokeapi.co/docs/v2#games-section
module Games
  # Returns a `PokeAPI::Types::Generation` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired generation.
  #
  # Valid generations (2021-05-08):
  # +----+-----------------+
  # | id |      name       |
  # +----+-----------------+
  # |  1 | generation-i    |
  # |  2 | generation-ii   |
  # |  3 | generation-iii  |
  # |  4 | generation-iv   |
  # |  5 | generation-v    |
  # |  6 | generation-vi   |
  # |  7 | generation-vii  |
  # |  8 | generation-viii |
  # +----+-----------------+
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def generation(identifier : String | UInt32) : PokeAPI::Types::Generation
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("generation/#{identifier}")

    if response.success?
      return PokeAPI::Types::Generation.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::Pokedex` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokedex.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokedex(identifier : String | UInt32) : PokeAPI::Types::Pokedex
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokedex/#{identifier}")

    if response.success?
      return PokeAPI::Types::Pokedex.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::Version` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired version.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def version(identifier : String | UInt32) : PokeAPI::Types::Version
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("version/#{identifier}")

    if response.success?
      return PokeAPI::Types::Version.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::VersionGroup` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired version group.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def version_group(identifier : String | UInt32) : PokeAPI::Types::VersionGroup
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("version-group/#{identifier}")

    if response.success?
      return PokeAPI::Types::VersionGroup.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end