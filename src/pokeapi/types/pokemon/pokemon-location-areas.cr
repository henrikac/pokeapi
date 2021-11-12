require "json"

module PokeAPI::Types
  @[JSON::Serializable::Options(emit_nulls: true)]
  class LocationAreaEncounter
    include JSON::Serializable

    @[JSON::Field(key: "location_area")]
    property location_area : NamedAPIResource?

    @[JSON::Field(key: "version_details")]
    property version_details : Array(VersionEncounterDetail)
  end
end
