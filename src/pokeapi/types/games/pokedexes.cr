require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Pokedex
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "is_main_series")]
    property is_main_series : Bool?

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?

    @[JSON::Field(key: "pokemon_entries")]
    property pokemon_entries : Array(PokemonEntry)?

    @[JSON::Field(key: "region")]
    property region : NamedAPIResource?

    @[JSON::Field(key: "version_groups")]
    property version_groups : Array(NamedAPIResource)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonEntry
    include JSON::Serializable

    @[JSON::Field(key: "entry_number")]
    property entry_number : Int32?

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : NamedAPIResource?
  end
end