require "json"

module PokeAPI::Types
  class Error
    include JSON::Serializable

    @[JSON::Field(key: "status")]
    property status : Int32

    @[JSON::Field(key: "message")]
    property message : String?
  end
end