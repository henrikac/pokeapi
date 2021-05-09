module PokeAPI
  # Generic PokeAPI error.
  class Error < Exception
  end

  # Exception raised when no resource was found.
  class NoResourceError < Error
    getter status_code : Int32
    getter status_message : String?

    def initialize(response : HTTP::Client::Response, cause = nil)
      @status_code = response.status_code
      @status_message = response.status_message

      super "#{@status_code} - #{@status_message}", cause
    end
  end
end