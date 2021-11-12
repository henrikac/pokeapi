require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class VersionGroup
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "order")]
    property order : Int32?

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource?

    @[JSON::Field(key: "move_learn_methods")]
    property move_learn_methods : Array(NamedAPIResource)

    @[JSON::Field(key: "pokedexes")]
    property pokedexes : Array(NamedAPIResource)

    @[JSON::Field(key: "regions")]
    property regions : Array(NamedAPIResource)

    @[JSON::Field(key: "versions")]
    property versions : Array(NamedAPIResource)
  end
end
