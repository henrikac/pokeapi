require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Pokemon
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "base_experience")]
    property base_experience : Int32?

    @[JSON::Field(key: "height")]
    property height : Int32?

    @[JSON::Field(key: "is_default")]
    property is_default : Bool?

    @[JSON::Field(key: "order")]
    property order : Int32?

    @[JSON::Field(key: "weight")]
    property weight : Int32?

    @[JSON::Field(key: "abilities")]
    property abilities : Array(PokemonAbility)?

    @[JSON::Field(key: "forms")]
    property forms : Array(NamedAPIResource)?

    @[JSON::Field(key: "game_indices")]
    property game_indices : Array(VersionGameIndex)?

    @[JSON::Field(key: "held_items")]
    property held_items : Array(PokemonHeldItem)?

    @[JSON::Field(key: "location_area_encounters")]
    property location_area_encounters : String?

    @[JSON::Field(key: "moves")]
    property moves : Array(PokemonMove)?

    @[JSON::Field(key: "sprites")]
    property sprites : PokemonSprites?

    @[JSON::Field(key: "species")]
    property species : NamedAPIResource?

    @[JSON::Field(key: "stats")]
    property stats : Array(PokemonStat)?

    @[JSON::Field(key: "types")]
    property types : Array(PokemonType)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonAbility
    include JSON::Serializable

    @[JSON::Field(key: "is_hidden")]
    property is_hidden : Bool?

    @[JSON::Field(key: "slot")]
    property slot : Int32?

    @[JSON::Field(key: "ability")]
    property ability : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonType
    include JSON::Serializable

    @[JSON::Field(key: "slot")]
    property slot : Int32?

    @[JSON::Field(key: "type")]
    property type : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonHeldItem
    include JSON::Serializable

    @[JSON::Field(key: "item")]
    property item : NamedAPIResource?

    @[JSON::Field(key: "version_details")]
    property version_details : Array(PokemonHeldItemVersion)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonHeldItemVersion
    include JSON::Serializable

    @[JSON::Field(key: "version")]
    property version : NamedAPIResource?

    @[JSON::Field(key: "rarity")]
    property rarity : Int32?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonMove
    include JSON::Serializable

    @[JSON::Field(key: "move")]
    property move : NamedAPIResource?

    @[JSON::Field(key: "version_group_details")]
    property version_group_details : Array(PokemonMoveVersion)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonMoveVersion
    include JSON::Serializable

    @[JSON::Field(key: "move_learn_method")]
    property move_learn_method : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?

    @[JSON::Field(key: "level_learned_at")]
    property level_learned_at : Int32?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonStat
    include JSON::Serializable

    @[JSON::Field(key: "stat")]
    property stat : NamedAPIResource?

    @[JSON::Field(key: "effort")]
    property effort : Int32?

    @[JSON::Field(key: "base_stat")]
    property base_stat : Int32?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonSprites
    include JSON::Serializable

    @[JSON::Field(key: "front_default")]
    property front_default : String?

    @[JSON::Field(key: "front_shiny")]
    property front_shiny : String?

    @[JSON::Field(key: "front_female")]
    property front_female : String?

    @[JSON::Field(key: "front_shiny_female")]
    property front_shiny_female : String?

    @[JSON::Field(key: "back_default")]
    property back_default : String?

    @[JSON::Field(key: "back_shiny")]
    property back_shiny : String?

    @[JSON::Field(key: "back_female")]
    property back_female : String?

    @[JSON::Field(key: "back_shiny_female")]
    property back_shiny_female : String?
  end
end