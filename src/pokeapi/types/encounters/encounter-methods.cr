require "json"

module PokeAPI::Types
  class EncounterMethod
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "order")]
    property order : Int32

    @[JSON::Field(key: "names")]
    property names : Array(Name)
  end
end