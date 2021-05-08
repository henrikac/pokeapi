require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PalParkArea
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?

    @[JSON::Field(key: "pokemon_encounters")]
    property pokemon_encounters : Array(PalParkEncounterSpecies)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PalParkEncounterSpecies
    include JSON::Serializable

    @[JSON::Field(key: "base_score")]
    property base_score : Int32?

    @[JSON::Field(key: "rate")]
    property rate : Int32?

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : NamedAPIResource?
  end
end