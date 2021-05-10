require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Ability
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "is_main_series")]
    property is_main_series : Bool?

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(VerboseEffect)

    @[JSON::Field(key: "effect_changes")]
    property effect_changes : Array(AbilityEffectChange)

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(AbilityFlavorText)

    @[JSON::Field(key: "pokemon")]
    property pokemon : Array(AbilityPokemon)
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class AbilityEffectChange
    include JSON::Serializable

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(Effect)

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class AbilityFlavorText
    include JSON::Serializable

    @[JSON::Field(key: "flavor_text")]
    property flavor_text : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class AbilityPokemon
    include JSON::Serializable

    @[JSON::Field(key: "is_hidden")]
    property is_hidden : Bool?

    @[JSON::Field(key: "slot")]
    property slot : Int32?

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource?
  end
end