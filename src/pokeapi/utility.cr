require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Utility` module contains methods to get data from the different
# endpoints in the Utility group.
#
# NOTE: see https://pokeapi.co/docs/v2#utility-section
module PokeAPI::Utility
  # Returns a `PokeAPI::Types::Language` based on the given *identifier*.
  # The identifier can be either the id or the name of the desired language.
  #
  # An `ArgumentError` is raised if the identifier is an empty string or 0
  def language(identifier : String | UInt32) : PokeAPI::Types::Language
    identifier = PokeAPI::Validator.validate_identifier(identifier)

    response = PokeAPI::Client.get("language/#{identifier}")

    if response.success?
      return PokeAPI::Types::Language.from_json(response.body)
    end

    raise PokeAPI::NoResourceError.new(response)
  end
end