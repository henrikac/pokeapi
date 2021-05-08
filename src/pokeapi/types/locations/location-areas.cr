require "json"

module PokeAPI::Types
  class LocationArea
    include JSON::Serializable
    
    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "game_index")]
    property game_index : Int32

    @[JSON::Field(key: "encounter_method_rates")]
    property encounter_method_rates : Array(EncounterMethodRate)

    @[JSON::Field(key: "location")]
    property location : NamedAPIResource

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "pokemon_encounters")]
    property pokemon_encounters : Array(PokemonEncounter)
  end

  class EncounterMethodRate
    include JSON::Serializable

    @[JSON::Field(key: "encounter_method")]
    property encounter_method : NamedAPIResource

    @[JSON::Field(key: "version_details")]
    property version_details : Array(EncounterVersionDetails)
  end

  class EncounterVersionDetails
    include JSON::Serializable

    @[JSON::Field(key: "rate")]
    property rate : Int32

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource
  end

  class PokemonEncounter
    include JSON::Serializable

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource

    @[JSON::Field(key: "version_details")]
    property version_details : Array(VersionEncounterDetail)
  end
end