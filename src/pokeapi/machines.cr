require "./client"
require "./types/pokemon/**"

# The `Machines` module contains methods to get data from the different
# endpoints in the Machines group.
#
# NOTE: see https://pokeapi.co/docs/v2#machines-section
module Machines
  # Returns a `PokeAPI::Types::Machine` based on the given *id*.
  #
  # An `ArgumentError` is raised if the id is lower than 1
  def machine(id : Int32) : PokeAPI::Types::Machine
    if id < 1
      raise ArgumentError.new("id must be greater than or equal to 1")
    end

    response = PokeAPI::Client.get("machine/#{id}")

    if response.success?
      return PokeAPI::Types::Machine.from_json(response.body)
    end

    raise Exception.new("#{response.status_code} - #{response.status_message}")
  end
end