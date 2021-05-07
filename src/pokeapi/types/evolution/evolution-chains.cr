require "json"

module PokeAPI::Types
  class EvolutionChain
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32

    @[JSON::Field(key: "baby_trigger_item")]
    property baby_trigger_item : NamedAPIResource

    @[JSON::Field(key: "chain")]
    property chain : ChainLink
  end

  class ChainLink
    include JSON::Serializable

    @[JSON::Field(key: "is_baby")]
    property is_baby : Bool

    @[JSON::Field(key: "species")]
    property species : NamedAPIResource

    @[JSON::Field(key: "evolution_details")]
    property evolution_details : Array(EvolutionDetail)

    @[JSON::Field(key: "evolves_to")]
    property evolves_to : Array(ChainLink)
  end

  class EvolutionDetail
    include JSON::Serializable

    @[JSON::Field(key: "item")]
    property item : NamedAPIResource

    @[JSON::Field(key: "trigger")]
    property trigger : NamedAPIResource

    @[JSON::Field(key: "gender")]
    property gender : Int32

    @[JSON::Field(key: "held_item")]
    property held_item : NamedAPIResource

    @[JSON::Field(key: "known_move")]
    property known_move : NamedAPIResource

    @[JSON::Field(key: "known_move_type")]
    property known_move_type : NamedAPIResource

    @[JSON::Field(key: "location")]
    property location : NamedAPIResource

    @[JSON::Field(key: "min_level")]
    property min_level : Int32

    @[JSON::Field(key: "min_happiness")]
    property min_happiness : Int32

    @[JSON::Field(key: "min_beauty")]
    property min_beauty : Int32

    @[JSON::Field(key: "min_affection")]
    property min_affection : Int32

    @[JSON::Field(key: "needs_overworld_rain")]
    property needs_overworld_rain : Bool

    @[JSON::Field(key: "party_species")]
    property party_species : NamedAPIResource

    @[JSON::Field(key: "party_type")]
    property party_type : NamedAPIResource

    @[JSON::Field(key: "relative_physical_stats")]
    property relative_physical_stats : Int32

    @[JSON::Field(key: "time_of_day")]
    property time_of_day : String?

    @[JSON::Field(key: "trade_species")]
    property trade_species : NamedAPIResource

    @[JSON::Field(key: "turn_upside_down")]
    property turn_upside_down : Bool
  end
end