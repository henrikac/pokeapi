require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Pokemon` module contains methods to get data from the different
# endpoints in the Pokémon group.
#
# NOTE: see https://pokeapi.co/docs/v2#pokemon-section
module PokeAPI::Pokemon
  # Returns a `PokeAPI::Types::Ability` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired ability.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def ability(identifier : String | UInt32) : PokeAPI::Types::Ability
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("ability/#{identifier}")

    if response.success?
      return PokeAPI::Types::Ability.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Characteristic` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is 0
  def characteristic(id : UInt32) : PokeAPI::Types::Characteristic
    if id < 1
      raise ArgumentError.new("id must be greater than 0")
    end

    response = PokeAPI::Client.get("characteristic/#{id}")

    if response.success?
      return PokeAPI::Types::Characteristic.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::EggGroup` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired egg group.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def egg_group(identifier : String | UInt32) : PokeAPI::Types::EggGroup
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("egg-group/#{identifier}")

    if response.success?
      return PokeAPI::Types::EggGroup.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Gender` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired gender.
  #
  # Valid genders (2021-05-07):
  # ```
  # +----+------------+
  # | id |    name    |
  # +----+------------+
  # |  1 | female     |
  # |  2 | male       |
  # |  3 | genderless |
  # +----+------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def gender(identifier : String | UInt32) : PokeAPI::Types::Gender
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("gender/#{identifier}")

    if response.success?
      return PokeAPI::Types::Gender.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::GrowthRate` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired growth rate.
  #
  # Valid growth rates (2021-05-07):
  # ```
  # +----+---------------------+
  # | id |        name         |
  # +----+---------------------+
  # |  1 | slow                |
  # |  2 | medium              |
  # |  3 | fast                |
  # |  4 | medium-slow         |
  # |  5 | slow-then-very-fast |
  # |  6 | fast-then-very-slow |
  # +----+---------------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def growth_rate(identifier : String | UInt32) : PokeAPI::Types::GrowthRate
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("growth-rate/#{identifier}")

    if response.success?
      return PokeAPI::Types::GrowthRate.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Nature` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired nature.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def nature(identifier : String | UInt32) : PokeAPI::Types::Nature
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("nature/#{identifier}")

    if response.success?
      return PokeAPI::Types::Nature.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokeathlonStat` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokeathlon stat.
  #
  # Valid pokeathlon stats (2021-05-07):
  # ```
  # +----+---------+
  # | id |  name   |
  # +----+---------+
  # |  1 | speed   |
  # |  2 | power   |
  # |  3 | skill   |
  # |  4 | stamina |
  # |  5 | jump    |
  # +----+---------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokeathlon_stat(identifier : String | UInt32) : PokeAPI::Types::PokeathlonStat
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokeathlon-stat/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokeathlonStat.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Pokemon` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon(identifier : String | UInt32) : PokeAPI::Types::Pokemon
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon/#{identifier}")

    if response.success?
      return PokeAPI::Types::Pokemon.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::LocationAreaEncounter` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_location_area(identifier : String | UInt32) : PokeAPI::Types::LocationAreaEncounter
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon/#{identifier}/encounters")

    if response.success?
      return PokeAPI::Types::LocationAreaEncounter.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokemonColor` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon color.
  #
  # Valid pokemon colors (2021-05-07):
  # ```
  # +----+--------+
  # | id |  name  |
  # +----+--------+
  # |  1 | black  |
  # |  2 | blue   |
  # |  3 | brown  |
  # |  4 | gray   |
  # |  5 | green  |
  # |  6 | pink   |
  # |  7 | purple |
  # |  8 | red    |
  # |  9 | white  |
  # | 10 | yellow |
  # +----+--------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_color(identifier : String | UInt32) : PokeAPI::Types::PokemonColor
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon-color/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokemonColor.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokemonForm` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon form.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_form(identifier : String | UInt32) : PokeAPI::Types::PokemonForm
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon-form/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokemonForm.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokemonHabitat` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon habitat.
  #
  # Valid pokemon habitats (2021-05-07):
  # ```
  # +----+---------------+
  # | id |     name      |
  # +----+---------------+
  # |  1 | cave          |
  # |  2 | forest        |
  # |  3 | grassland     |
  # |  4 | mountain      |
  # |  5 | rare          |
  # |  6 | rough-terrain |
  # |  7 | sea           |
  # |  8 | urban         |
  # |  9 | waters-edge   |
  # +----+---------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_habitat(identifier : String | UInt32) : PokeAPI::Types::PokemonHabitat
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon-habitat/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokemonHabitat.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokemonShape` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon shape.
  #
  # Valid pokemon shapes (2021-05-07):
  # ```
  # +----+-----------+
  # | id |   name    |
  # +----+-----------+
  # |  1 | ball      |
  # |  2 | squiggle  |
  # |  3 | fish      |
  # |  4 | arms      |
  # |  5 | blob      |
  # |  6 | upright   |
  # |  7 | legs      |
  # |  8 | quadruped |
  # |  9 | wings     |
  # | 10 | tentacles |
  # | 11 | heads     |
  # | 12 | humanoid  |
  # | 13 | bug-wings |
  # | 14 | armor     |
  # +----+-----------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_shape(identifier : String | UInt32) : PokeAPI::Types::PokemonShape
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon-shape/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokemonShape.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::PokemonSpecies` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon species.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def pokemon_species(identifier : String | UInt32) : PokeAPI::Types::PokemonSpecies
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("pokemon-species/#{identifier}")

    if response.success?
      return PokeAPI::Types::PokemonSpecies.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Stat` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired stat.
  #
  # Valid stats (2021-05-07):
  # ```
  # +----+-----------------+
  # | id |      name       |
  # +----+-----------------+
  # |  1 | hp              |
  # |  2 | attack          |
  # |  3 | defense         |
  # |  4 | special-attack  |
  # |  5 | special-defense |
  # |  6 | speed           |
  # |  7 | accuracy        |
  # |  8 | evasion         |
  # +----+-----------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def stat(identifier : String | UInt32) : PokeAPI::Types::Stat
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("stat/#{identifier}")

    if response.success?
      return PokeAPI::Types::Stat.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::Type` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired pokémon type.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def type(identifier : String | UInt32) : PokeAPI::Types::Type
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("type/#{identifier}")

    if response.success?
      return PokeAPI::Types::Type.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end