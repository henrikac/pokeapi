require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Location
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "region")]
    property region : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "game_indices")]
    property game_indices : Array(GenerationGameIndex)

    @[JSON::Field(key: "areas")]
    property areas : Array(NamedAPIResource)
  end
end
