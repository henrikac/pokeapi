require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveCategory
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "moves")]
    property moves : Array(NamedAPIResource)?

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)?
  end
end