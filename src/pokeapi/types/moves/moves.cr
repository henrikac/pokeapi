require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Move
    include JSON::Serializable

    @[JSON::Field(key: "id")]
    property id : Int32?

    @[JSON::Field(key: "name")]
    property name : String?

    @[JSON::Field(key: "accuracy")]
    property accuracy : Int32?

    @[JSON::Field(key: "effect_chance")]
    property effect_chance : Int32?

    @[JSON::Field(key: "pp")]
    property pp : Int32?

    @[JSON::Field(key: "priority")]
    property priority : Int32?

    @[JSON::Field(key: "power")]
    property power : Int32?

    @[JSON::Field(key: "contest_combos")]
    property contest_combos : ContestComboSets?

    @[JSON::Field(key: "contest_type")]
    property contest_type : NamedAPIResource?

    @[JSON::Field(key: "contest_effect")]
    property contest_effect : APIResource?

    @[JSON::Field(key: "damage_class")]
    property damage_class : NamedAPIResource?

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(VerboseEffect)

    @[JSON::Field(key: "effect_changes")]
    property effect_changes : Array(AbilityEffectChange)

    @[JSON::Field(key: "flavor_text_entries")]
    property flavor_text_entries : Array(MoveFlavorText)

    @[JSON::Field(key: "generation")]
    property generation : NamedAPIResource?

    @[JSON::Field(key: "machines")]
    property machines : Array(MachineVersionDetail)

    @[JSON::Field(key: "meta")]
    property meta : MoveMetaData?

    @[JSON::Field(key: "names")]
    property names : Array(Name)

    @[JSON::Field(key: "past_values")]
    property past_values : Array(PastMoveStatValues)

    @[JSON::Field(key: "stat_changes")]
    property stat_changes : Array(MoveStatChange)

    @[JSON::Field(key: "super_contest_effect")]
    property super_contest_effect : APIResource?

    @[JSON::Field(key: "target")]
    property target : NamedAPIResource?

    @[JSON::Field(key: "type")]
    property type : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContestComboSets
    include JSON::Serializable

    @[JSON::Field(key: "normal")]
    property normal : ContestComboDetail?

    @[JSON::Field(key: "super")]
    property super : ContestComboDetail?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class ContestComboDetail
    include JSON::Serializable

    @[JSON::Field(key: "use_before")]
    property use_before : Array(NamedAPIResource)

    @[JSON::Field(key: "use_after")]
    property use_after : Array(NamedAPIResource)
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveFlavorText
    include JSON::Serializable

    @[JSON::Field(key: "flavor_text")]
    property flavor_text : String?

    @[JSON::Field(key: "language")]
    property language : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveMetaData
    include JSON::Serializable

    @[JSON::Field(key: "ailment")]
    property ailment : NamedAPIResource?

    @[JSON::Field(key: "category")]
    property category : NamedAPIResource?

    @[JSON::Field(key: "min_hits")]
    property min_hits : Int32?

    @[JSON::Field(key: "max_hits")]
    property max_hits : Int32?

    @[JSON::Field(key: "min_turns")]
    property min_turns : Int32?

    @[JSON::Field(key: "max_turns")]
    property max_turns : Int32?

    @[JSON::Field(key: "drain")]
    property drain : Int32?

    @[JSON::Field(key: "healing")]
    property healing : Int32?

    @[JSON::Field(key: "crit_rate")]
    property crit_rate : Int32?

    @[JSON::Field(key: "ailment_chance")]
    property ailment_chance : Int32?

    @[JSON::Field(key: "flinch_chance")]
    property flinch_chance : Int32?

    @[JSON::Field(key: "stat_chance")]
    property stat_chance : Int32?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class MoveStatChange
    include JSON::Serializable

    @[JSON::Field(key: "change")]
    property change : Int32?

    @[JSON::Field(key: "stat")]
    property stat : NamedAPIResource?
  end

  @[JSON::Serializable::Options(emit_nulls: true)]
  class PastMoveStatValues
    include JSON::Serializable

    @[JSON::Field(key: "accuracy")]
    property accuracy : Int32?

    @[JSON::Field(key: "effect_chance")]
    property effect_chance : Int32?

    @[JSON::Field(key: "power")]
    property power : Int32?

    @[JSON::Field(key: "pp")]
    property pp : Int32?

    @[JSON::Field(key: "effect_entries")]
    property effect_entries : Array(VerboseEffect)

    @[JSON::Field(key: "type")]
    property type : NamedAPIResource?

    @[JSON::Field(key: "version_group")]
    property version_group : NamedAPIResource?
  end
end
