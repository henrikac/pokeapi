require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Gender
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "pokemon_species_details")]
    property pokemon_species_details : Array(PokemonSpeciesGender)?

    @[JSON::Field(key: "required_for_evolution")]
    property required_for_evolution : Array(NamedAPIResource)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonSpeciesGender
    include JSON::Serializable

    @[JSON::Field(key: "rate")]
    property rate : Int32?

    @[JSON::Field(key: "pokemon_species")]
    property pokemon_species : NamedAPIResource?
  end
end