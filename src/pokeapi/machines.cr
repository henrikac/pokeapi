require "./client"
require "./types/pokemon/**"

# The `PokeAPI::Machines` module contains methods to get data from the different
# endpoints in the Machines group.
#
# NOTE: see https://pokeapi.co/docs/v2#machines-section
module PokeAPI::Machines
  # Returns a `PokeAPI::Types::Machine` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is 0
  def machine(id : UInt32) : PokeAPI::Types::Machine
    if id < 1
      raise ArgumentError.new("id must be greater than 0")
    end

    response = PokeAPI::Client.get("machine/#{id}")

    if response.success?
      return PokeAPI::Types::Machine.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end