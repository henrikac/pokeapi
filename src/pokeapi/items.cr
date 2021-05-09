require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Items` module contains methods to get data from the different
# endpoints in the Items group.
#
# NOTE: see https://pokeapi.co/docs/v2#items-section
module PokeAPI::Items
  # Returns a `PokeAPI::Types::Item` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired item.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def item(identifier : String | UInt32) : PokeAPI::Types::Item
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("item/#{identifier}")

    if response.success?
      return PokeAPI::Types::Item.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::ItemAttribute` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired item attribute.
  #
  # Valid item attributes (2021-05-08):
  # ```
  # +----+------------------+
  # | id |       name       |
  # +----+------------------+
  # |  1 | countable        |
  # |  2 | consumable       |
  # |  3 | usable-overworld |
  # |  4 | usable-in-battle |
  # |  5 | holdable         |
  # |  6 | holdable-passive |
  # |  7 | holdable-active  |
  # |  8 | underground      |
  # +----+------------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def item_attribute(identifier : String | UInt32) : PokeAPI::Types::ItemAttribute
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("item-attribute/#{identifier}")

    if response.success?
      return PokeAPI::Types::ItemAttribute.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::ItemCategory` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired item category.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def item_category(identifier : String | UInt32) : PokeAPI::Types::ItemCategory
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("item-category/#{identifier}")

    if response.success?
      return PokeAPI::Types::ItemCategory.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::ItemFlingEffect` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired item fling effect.
  #
  # Valid item fling effects (2021-05-08):
  # ```
  # +----+--------------+
  # | id |     name     |
  # +----+--------------+
  # |  1 | badly-poison |
  # |  2 | burn         |
  # |  3 | berry-effect |
  # |  4 | herb-effect  |
  # |  5 | paralyze     |
  # |  6 | poison       |
  # |  7 | flinch       |
  # +----+--------------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def item_fling_effect(identifier : String | UInt32) : PokeAPI::Types::ItemFlingEffect
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("item-fling-effect/#{identifier}")

    if response.success?
      return PokeAPI::Types::ItemFlingEffect.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end

  # Returns a `PokeAPI::Types::ItemPocket` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired item pocket.
  #
  # Valid item pockets (2021-05-08):
  # ```
  # +----+-----------+
  # | id |   name    |
  # +----+-----------+
  # |  1 | misc      |
  # |  2 | medicine  |
  # |  3 | pokeballs |
  # |  4 | machines  |
  # |  5 | berries   |
  # |  6 | mail      |
  # |  7 | battle    |
  # |  8 | key       |
  # +----+-----------+
  # ```
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def item_pocket(identifier : String | UInt32) : PokeAPI::Types::ItemPocket
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("item-pocket/#{identifier}")

    if response.success?
      return PokeAPI::Types::ItemPocket.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end