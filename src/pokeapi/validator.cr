class PokeAPI::Validator
  def self.validate_identifier(identifier : String | Int32) : String
    if identifier.is_a?(String)
      if identifier.empty?
        raise ArgumentError.new("identifier is undefined")
      end
    elsif identifier.is_a?(Int32)
      if identifier < 1
        raise ArgumentError.new("please enter an id greater than or equal to 1")
      end

      identifier = identifier.to_s
    end

    return identifier
  end
end