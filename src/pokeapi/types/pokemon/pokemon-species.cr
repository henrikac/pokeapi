require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonSpecies
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "order")]
    property order : Int32?

    @[JSON::Field(key: "gender_rate")]
    property gender_rate : Int32?

    @[JSON::Field(key: "capture_rate")]
    property capture_rate : Int32?

    @[JSON::Field(key: "base_happiness")]
    property base_happiness : Int32?

    @[JSON::Field(key: "is_baby")]
    property is_baby : Bool?

    @[JSON::Field(key: "is_legendary")]
    property is_legendary : Bool?

    @[JSON::Field(key: "is_mythical")]
    property is_mythical : Bool?

    @[JSON::Field(key: "hatch_counter")]
    property hatch_counter : Int32?

    @[JSON::Field(key: "has_gender_differences")]
    property has_gender_differences : Bool?

    @[JSON::Field(key: "forms_switchable")]
    property forms_switchable : Bool?

    @[JSON::Field(key: "growth_rate")]
    property growth_rate : NamedAPIResource?

    @[JSON::Field(key: "pokedex_numbers")]
    property pokedex_numbers : Array(PokemonSpeciesDexEntry)?

    @[JSON::Field(key: "egg_groups")]
    property egg_groups : Array(NamedAPIResource)?

    @[JSON::Field(key: "color")]
    property color : NamedAPIResource?

    @[JSON::Field(key: "shape")]
    property shape : NamedAPIResource?

    @[JSON::Field(key: "evolves_from_species")]
    property evolves_from_species : NamedAPIResource?

    @[JSON::Field(key: "evolution_chain")]
    property evolution_chain : APIResource?

    @[JSON::Field(key: "habitat")]
    property habitat : NamedAPIResource?

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?

    @[JSON::Field(key: "pal_park_encounters")]
    property pal_park_encounters : Array(PalParkEncounterArea)?

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(FlavorText)?

    @[JSON::Field(key: "form_descriptions")]
    property form_descriptions : Array(Description)?

    @[JSON::Field(key: "genera")]
    property genera : Array(Genus)?

    @[JSON::Field(key: "varieties")]
    property varieties : Array(PokemonSpeciesVariety)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class Genus
    include JSON::Serializable

    @[JSON::Field(key: "genus")]
    property genus : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonSpeciesDexEntry
    include JSON::Serializable

    @[JSON::Field(key: "entry_number")]
    property entry_number : Int32?

    @[JSON::Field(key: "pokedex")]
    property pokedex : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PalParkEncounterArea
    include JSON::Serializable

    @[JSON::Field(key: "base_score")]
    property base_score : Int32?

    @[JSON::Field(key: "rate")]
    property rate : Int32?

    @[JSON::Field(key: "area")]
    property area : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonSpeciesVariety
    include JSON::Serializable

    @[JSON::Field(key: "is_default")]
    property is_default : Bool?

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource?
  end
end