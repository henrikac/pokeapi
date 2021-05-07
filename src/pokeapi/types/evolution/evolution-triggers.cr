require "json"

module PokeAPI::Types
  class EvolutionTrigger
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : Array(NamedAPIResource)
  end
end