require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Item
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "cost")]
    property cost : Int32?

    @[JSON::Field(key: "fling_power")]
    property fling_power : Int32?

    @[JSON::Field(key: "fling_effect")]
    property fling_effect : NamedAPIResource?

    @[JSON::Field(key: "attributes")]
    property attributes : Array(NamedAPIResource)?

    @[JSON::Field(key: "category")]
    property category : NamedAPIResource?

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(VerboseEffect)?

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(VersionGroupFlavorText)?

    @[JSON::Field(key: "game_indices")]
    property game_indices : Array(GenerationGameIndex)?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?

    @[JSON::Field(key: "sprites")]
    property sprites : ItemSprites?

    @[JSON::Field(key: "held_by_pokemon")]
    property held_by_pokemon : Array(ItemHolderPokemon)?

    @[JSON::Field(key: "baby_trigger_for")]
    property baby_trigger_for : APIResource?

    @[JSON::Field(key: "machines")]
    property machines : Array(MachineVersionDetail)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ItemSprites
    include JSON::Serializable

    @[JSON::Field(key: "default")]
    property default : String?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ItemHolderPokemon
    include JSON::Serializable

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource?

    @[JSON::Field(key: "version_details")]
    property version_details : Array(ItemHolderPokemonVersionDetail)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ItemHolderPokemonVersionDetail
    include JSON::Serializable

    @[JSON::Field(key: "rarity")]
    property rarity : Int32?

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource?
  end
end