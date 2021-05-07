class PokeAPI::Error
  def self.from_response(response : HTTP::Client::Response) : PokeAPI::Types::Error
    error_json = {
      "status" => response.status_code,
      "message" => response.status_message
    }
    return PokeAPI::Types::Error.from_json(error_json.to_json)
  end
end