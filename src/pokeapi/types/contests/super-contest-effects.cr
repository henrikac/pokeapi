require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SuperContestEffect
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "appeal")]
    property appeal : Int32?

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(FlavorText)

    @[JSON::Field(key: "moves")]
    property moves : Array(NamedAPIResource)
  end
end