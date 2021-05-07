require "json"

module PokeAPI::Types
  class EncounterCondition
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "values")]
    property values : Array(NamedAPIResource)
  end
end