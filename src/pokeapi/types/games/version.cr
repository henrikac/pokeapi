require "json"

module PokeAPI::Types
  class Version
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource
  end
end