require "./client"
require "./types/pokemon/**"

# The `Moves` module contains methods to get data from the different
# endpoints in the Moves group.
#
# NOTE: see https://pokeapi.co/docs/v2#moves-section
module Moves
  # Returns a `PokeAPI::Types::Move` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def move(identifier : String | UInt32) : PokeAPI::Types::Move
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("move/#{identifier}")

    if response.success?
      return PokeAPI::Types::Move.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveAilment` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move ailment.
  #
  # An `ArgumentError` is raised if:
  # + the identifier is an empty string
  # + the identifier is an integer AND lower than -1
  def move_ailment(identifier : String | Int32) : PokeAPI::Types::MoveAilment
    if identifier.is_a?(String) && identifier.empty?
      raise ArgumentError.new("identifier is undefined")
    elsif identifier.is_a?(Int32) && identifier < -1
      raise ArgumentError.new("idenfifier must be greater than or equal to -1")
    end

    response = PokeAPI::Client.get("move-ailment/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveAilment.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveBattleStyle` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move battle style.
  #
  # Valid move battle styles (2021-05-08):
  # ```
  # +----+---------+
  # | id |  name   |
  # +----+---------+
  # |  1 | attack  |
  # |  2 | defense |
  # |  3 | support |
  # +----+---------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def move_battle_style(identifier : String | UInt32) : PokeAPI::Types::MoveBattleStyle
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("move-battle-style/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveBattleStyle.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveCategory` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move category.
  #
  # Valid move categories (2021-05-08):
  # ```
  # +----+--------------------+
  # | id |        name        |
  # +----+--------------------+
  # |  0 | damage             |
  # |  1 | ailment            |
  # |  2 | net-good-stat      |
  # |  3 | heal               |
  # |  4 | damage+ailment     |
  # |  5 | swagger            |
  # |  6 | damage+lower       |
  # |  7 | damage+raise       |
  # |  8 | damage+heal        |
  # |  9 | ohko               |
  # | 10 | whole-field-effect |
  # | 11 | field-effect       |
  # | 12 | force-switch       |
  # | 13 | unique             |
  # +----+--------------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string
  def move_category(identifier : String | UInt32) : PokeAPI::Types::MoveCategory
    if identifier.is_a?(String) && identifier.empty?
      raise ArgumentError.new("identifier is undefined")
    end

    response = PokeAPI::Client.get("move-category/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveCategory.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveDamageClass` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move damage class.
  #
  # Valid move damage classes (2021-05-08):
  # ```
  # +----+----------+
  # | id |   name   |
  # +----+----------+
  # |  1 | status   |
  # |  2 | physical |
  # |  3 | special  |
  # +----+----------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def move_damage_class(identifier : String | UInt32) : PokeAPI::Types::MoveDamageClass
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("move-damage-class/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveDamageClass.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveLearnMethod` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move learn method.
  #
  # Valid move learn methods (2021-05-08):
  # ```
  # +----+--------------------------+
  # | id |           name           |
  # +----+--------------------------+
  # |  1 | level-up                 |
  # |  2 | egg                      |
  # |  3 | tutor                    |
  # |  4 | machine                  |
  # |  5 | stadium-surfing-pikachu  |
  # |  6 | light-ball-egg           |
  # |  7 | colosseum-purification   |
  # |  8 | xd-shadow                |
  # |  9 | xd-purification          |
  # | 10 | form-change              |
  # +----+--------------------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def move_learn_method(identifier : String | UInt32) : PokeAPI::Types::MoveLearnMethod
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("move-learn-method/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveLearnMethod.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end

  # Returns a `PokeAPI::Types::MoveTarget` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired move target.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def move_target(identifier : String | UInt32) : PokeAPI::Types::MoveTarget
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("move-target/#{identifier}")

    if response.success?
      return PokeAPI::Types::MoveTarget.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end