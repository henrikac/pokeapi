require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContestType
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "berry_flavor")]
    property berry_flavor : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(ContestName)
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContestName
    include JSON::Serializable

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "color")]
    property color : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end
end
