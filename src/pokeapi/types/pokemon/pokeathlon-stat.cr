require "json"

module PokeAPI::Types
  class PokeathlonStat
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "affecting_natures")]
    property affecting_natures : NaturePokeathlonStatAffectSets
  end

  class NaturePokeathlonStatAffectSets
    include JSON::Serializable

    @[JSON::Field(key: "increase")]
    property increase : Array(NaturePokeathlonStatAffect)

    @[JSON::Field(key: "decrease")]
    property decrease : Array(NaturePokeathlonStatAffect)
  end

  class NaturePokeathlonStatAffect
    include JSON::Serializable

    @[JSON::Field(key: "max_change")]
    property max_change : Int32

    @[JSON::Field(key: "nature")]
    property nature : NamedAPIResource
  end
end