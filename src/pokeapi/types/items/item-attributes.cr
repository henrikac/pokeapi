require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ItemAttribute
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "items")]
    property items : Array(NamedAPIResource)
    
    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)
  end
end