require "json"

module PokeAPI::Types
  class Type
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "damage_relations")]
    property damage_relations : TypeRelations

    @[JSON::Field(key: "game_indices")]
    property game_indices : GenerationGameIndex

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource

    @[JSON::Field(key: "move_damage_class")]
    property move_damage_class : NamedAPIResource

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "pokemon")]
    property pokemon : TypePokemon

    @[JSON::Field(key: "moves")]
    property moves : Array(NamedAPIResource)
  end

  class TypePokemon
    include JSON::Serializable

    @[JSON::Field(key: "slot")]
    property slot : Int32

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource
  end

  class TypeRelations
    include JSON::Serializable

    @[JSON::Field(key: "no_damage_to")]
    property no_damage_to : Array(NamedAPIResource)

    @[JSON::Field(key: "half_damage_to")]
    property half_damage_to : Array(NamedAPIResource)

    @[JSON::Field(key: "double_damage_to")]
    property double_damage_to : Array(NamedAPIResource)

    @[JSON::Field(key: "no_damage_from")]
    property no_damage_from : Array(NamedAPIResource)

    @[JSON::Field(key: "half_damage_from")]
    property half_damage_from : Array(NamedAPIResource)

    @[JSON::Field(key: "double_damage_from")]
    property double_damage_from : Array(NamedAPIResource)
  end
end