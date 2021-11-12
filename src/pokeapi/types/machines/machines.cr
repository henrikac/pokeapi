require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Machine
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "item")]
    property item : NamedAPIResource?

    @[JSON::Field(key: "move")]
    property move : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end
end
