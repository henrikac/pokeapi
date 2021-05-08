require "json"

module PokeAPI::Types
  class Region
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "locations")]
    property locations : Array(NamedAPIResource)

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "main_generation")]
    property main_generation : NamedAPIResource

    @[JSON::Field(key: "pokedexes")]
    property pokedexes : Array(NamedAPIResource)

    @[JSON::Field(key: "version_groups")]
    property version_groups : Array(NamedAPIResource)
  end
end