require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Berry
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "growth_time")]
    property growth_time : Int32?

    @[JSON::Field(key: "max_harvest")]
    property max_harvest : Int32?

    @[JSON::Field(key: "natural_gift_power")]
    property natural_gift_power : Int32?

    @[JSON::Field(key: "size")]
    property size : Int32?

    @[JSON::Field(key: "smoothness")]
    property smoothness : Int32?

    @[JSON::Field(key: "soil_dryness")]
    property soil_dryness : Int32?

    @[JSON::Field(key: "firmness")]
    property firmness : NamedAPIResource?

    @[JSON::Field(key: "flavors")]
    property flavors : Array(BerryFlavorMap)

    @[JSON::Field(key: "item")]
    property item : NamedAPIResource?

    @[JSON::Field(key: "natural_gift_type")]
    property natural_gift_type : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class BerryFlavorMap
    include JSON::Serializable

    @[JSON::Field(key: "potency")]
    property potency : Int32?

    @[JSON::Field(key: "flavor")]
    property flavor : NamedAPIResource?
  end
end