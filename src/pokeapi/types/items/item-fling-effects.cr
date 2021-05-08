require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ItemFlingEffect
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(Effect)?
    
    @[JSON::Field(key: "items")]
    property items : Array(NamedAPIResource)?
  end
end