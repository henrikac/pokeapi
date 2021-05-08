require "json"

@[JSON::Serializable::Options(emit_nulls: true)]
class PokeAPI::Types::ResourceList
  include JSON::Serializable

  @[JSON::Field(key: "count")]
  property count : Int32?

  @[JSON::Field(key: "next")]
  property next_page : String?

  @[JSON::Field(key: "previous")]
  property previous_page : String?

  @[JSON::Field(key: "results")]
  property results : Array(NamedAPIResource)?
end