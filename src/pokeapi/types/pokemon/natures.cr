require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Nature
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "decreased_stat")]
    property decreased_stat : NamedAPIResource?

    @[JSON::Field(key: "increased_stat")]
    property increased_stat : NamedAPIResource?

    @[JSON::Field(key: "hates_flavor")]
    property hates_flavor : NamedAPIResource?

    @[JSON::Field(key: "likes_flavor")]
    property likes_flavor : NamedAPIResource?

    @[JSON::Field(key: "pokeathlon_stat_changes")]
    property pokeathlon_stat_changes : Array(NatureStatChange)?

    @[JSON::Field(key: "move_battle_style_preferences")]
    property move_battle_style_preferences : Array(MoveBattleStylePreference)?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class NatureStatChange
    include JSON::Serializable

    @[JSON::Field(key: "max_change")]
    property max_change : Int32?

    @[JSON::Field(key: "pokeathlon_stat")]
    property pokeathlon_stat : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveBattleStylePreference
    include JSON::Serializable

    @[JSON::Field(key: "low_hp_preference")]
    property low_hp_preference : Int32?

    @[JSON::Field(key: "high_hp_preference")]
    property high_hp_preference : Int32?

    @[JSON::Field(key: "move_battle_style")]
    property move_battle_style : NamedAPIResource?
  end
end