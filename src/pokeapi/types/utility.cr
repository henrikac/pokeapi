require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Language
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "official")]
    property official : Bool?

    @[JSON::Field(key: "iso639")]
    property iso639 : String?

    @[JSON::Field(key: "iso3166")]
    property iso3166 : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class APIResource
    include JSON::Serializable

    @[JSON::Field(key: "url")]
    property url : String?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class Description
    include JSON::Serializable

    @[JSON::Field(key: "description")]
    property description : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class Effect
    include JSON::Serializable

    @[JSON::Field(key: "effect")]
    property effect : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class Encounter
    include JSON::Serializable
    
    @[JSON::Field(key: "min_level")]
    property min_level : Int32?

    @[JSON::Field(key: "max_level")]
    property max_level : Int32?

    @[JSON::Field(key: "condition_values")]
    property condition_values : Array(NamedAPIResource)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class FlavorText
    include JSON::Serializable

    @[JSON::Field(key: "flavor_text")]
    property flavor_text : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class GenerationGameIndex
    include JSON::Serializable

    @[JSON::Field(key: "game_index")]
    property game_index : Int32?

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MachineVersionDetail
    include JSON::Serializable

    @[JSON::Field(key: "machine")]
    property machine : APIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class Name
    include JSON::Serializable

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class NamedAPIResource
    include JSON::Serializable

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "url")]
    property url : String?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class VerboseEffect
    include JSON::Serializable

    @[JSON::Field(key: "effect")]
    property effect : String?

    @[JSON::Field(key: "short_effect")]
    property short_effect : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class VersionEncounterDetail
    include JSON::Serializable

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource?

    @[JSON::Field(key: "max_chance")]
    property max_chance : Int32?

    @[JSON::Field(key: "encounter_details")]
    property encounter_details : Array(Encounter)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class VersionGameIndex
    include JSON::Serializable

    @[JSON::Field(key: "game_index")]
    property game_index : Int32?

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class VersionGroupFlavorText
    include JSON::Serializable

    @[JSON::Field(key: "text")]
    property text : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end
end