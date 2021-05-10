require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BerryFlavor
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "berries")]
    property berries : Array(FlavorBerryMap)

    @[JSON::Field(key: "contest_type")]
    property contest_type : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class FlavorBerryMap
    include JSON::Serializable

    @[JSON::Field(key: "potency")]
    property potency : Int32?

    @[JSON::Field(key: "berry")]
    property berry : NamedAPIResource?
  end
end