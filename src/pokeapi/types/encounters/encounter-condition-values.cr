require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class EncounterConditionValue
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "condition")]
    property condition : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?
  end
end