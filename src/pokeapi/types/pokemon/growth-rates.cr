require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class GrowthRate
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "formula")]
    property formula : String?

    @[JSON::Field(key: "descriptions")]
    property descriptions : Array(Description)?

    @[JSON::Field(key: "levels")]
    property levels : Array(GrowthRateExperienceLevel)?

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : Array(NamedAPIResource)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class GrowthRateExperienceLevel
    include JSON::Serializable

    @[JSON::Field(key: "level")]
    property level : Int32?

    @[JSON::Field(key: "experience")]
    property experience : Int32?
  end
end