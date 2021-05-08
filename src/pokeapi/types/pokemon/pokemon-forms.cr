require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonForm
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "order")]
    property order : Int32?

    @[JSON::Field(key: "form_order")]
    property form_order : Int32?

    @[JSON::Field(key: "is_default")]
    property is_default : Bool?

    @[JSON::Field(key: "is_battle_only")]
    property is_battle_only : Bool?

    @[JSON::Field(key: "is_mega")]
    property is_mega : Bool?

    @[JSON::Field(key: "form_name")]
    property form_name : String?

    @[JSON::Field(key: "pokemon")]
    property pokemon : NamedAPIResource?

    @[JSON::Field(key: "sprites")]
    property sprites : PokemonFormSprites?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?

    @[JSON::Field(key: "names")]
    property names : Array(Name)?

    @[JSON::Field(key: "form_names")]
    property form_names : Array(Name)?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PokemonFormSprites
    include JSON::Serializable

    @[JSON::Field(key: "front_default")]
    property front_default : String?

    @[JSON::Field(key: "front_shiny")]
    property front_shiny : String?

    @[JSON::Field(key: "back_default")]
    property back_default : String?

    @[JSON::Field(key: "back_shiny")]
    property back_shiny : String?
  end
end