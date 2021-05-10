require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContestEffect
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "appeal")]
    property appeal : Int32?

    @[JSON::Field(key: "jam")]
    property jam : Int32?

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(Effect)

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(FlavorText)
  end
end