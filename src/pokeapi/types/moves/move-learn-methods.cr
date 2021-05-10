require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveLearnMethod
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "version_groups")]
    property version_groups : Array(NamedAPIResource)
  end
end