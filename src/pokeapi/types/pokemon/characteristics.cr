require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Characteristic
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "gene_modulo")]
    property gene_modulo : Int32?

    @[JSON::Field(key: "possible_values")]
    property possible_values : Array(Int32)

    @[JSON::Field(key: "highest_stat")]
    property highest_stat : NamedAPIResource?

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)
  end
end