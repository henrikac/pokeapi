require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Generation
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "abilities")]
    property abilities : Array(NamedAPIResource)

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "main_region")]
    property main_region : NamedAPIResource?

    @[JSON::Field(key: "moves")]
    property moves : Array(NamedAPIResource)

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : Array(NamedAPIResource)

    @[JSON::Field(key: "types")]
    property types : Array(NamedAPIResource)

    @[JSON::Field(key: "version_groups")]
    property version_groups : Array(NamedAPIResource)
  end
end
