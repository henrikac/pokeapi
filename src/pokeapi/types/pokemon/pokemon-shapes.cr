require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonShape
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "awesome_names")]
    property awesome_names : Array(AwesomeName)

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : Array(NamedAPIResource)
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class AwesomeName
    include JSON::Serializable

    @[JSON::Field(key: "awesome_name")]
    property awesome_name : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end
end
