require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Stat
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "game_index")]
    property game_index : Int32?

    @[JSON::Field(key: "is_battle_only")]
    property is_battle_only : Bool?

    @[JSON::Field(key: "affecting_moves")]
    property affecting_moves : MoveStatAffectSets?

    @[JSON::Field(key: "affecting_natures")]
    property affecting_natures : NatureStatAffectSets?

    @[JSON::Field(key: "characteristics")]
    property characteristics : APIResource?

    @[JSON::Field(key: "move_damage_class")]
    property move_damage_class : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveStatAffectSets
    include JSON::Serializable

    @[JSON::Field(key: "increase")]
    property increase : Array(MoveStatAffect)?

    @[JSON::Field(key: "decrease")]
    property decrease : Array(MoveStatAffect)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveStatAffect
    include JSON::Serializable

    @[JSON::Field(key: "change")]
    property change : Int32?

    @[JSON::Field(key: "move")]
    property move : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class NatureStatAffectSets
    include JSON::Serializable

    @[JSON::Field(key: "increase")]
    property increase : NamedAPIResource?

    @[JSON::Field(key: "decrease")]
    property decrease : NamedAPIResource?
  end
end