require "./spec_helper"

describe ".encounter_method" do
  it "should return an encounter method" do
    test_data = File.read("./spec/data/encounter-method.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-method/7/")
      .to_return(status: 200, body: test_data)

    method = PokeAPI.encounter_method(7)

    method.is_a?(PokeAPI::Types::EncounterMethod).should be_true
    method.id.should eq 7
    method.name.should eq "headbutt"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_method("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_method(0)
    end
  end

  it "should raise a NoResourceError if no encounter method was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-method/999/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.encounter_method(999)
    end
  end
end

describe ".encounter_condition" do
  it "should return an encounter condition" do
    test_data = File.read("./spec/data/encounter-condition.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-condition/other/")
      .to_return(status: 200, body: test_data)

    condition = PokeAPI.encounter_condition("other")

    condition.is_a?(PokeAPI::Types::EncounterCondition).should be_true
    condition.id.should eq 10
    condition.name.should eq "other"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_condition("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_condition(0)
    end
  end

  it "should raise a NoResourceError if no encounter condition was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-condition/unknown-condition/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.encounter_condition("unknown-condition")
    end
  end
end

describe ".encounter_condition_value" do
  it "should return an encounter condition value" do
    test_data = File.read("./spec/data/encounter-condition-value.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-condition-value/37/")
      .to_return(status: 200, body: test_data)

    condition_value = PokeAPI.encounter_condition_value(37)

    condition_value.is_a?(PokeAPI::Types::EncounterConditionValue).should be_true
    condition_value.id.should eq 37
    condition_value.name.should eq "story-progress-national-dex"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_condition_value("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.encounter_condition_value(0)
    end
  end

  it "should raise a NoResourceError if no encounter condition value was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/encounter-condition-value/91823/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.encounter_condition_value(91823)
    end
  end
end
