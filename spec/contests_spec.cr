require "./spec_helper"

describe ".contest_type" do
  it "should return contest type" do
    test_data = File.read("./spec/data/contest-type.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/contest-type/cute/")
      .to_return(status: 200, body: test_data)

    type = PokeAPI.contest_type("cute")

    type.is_a?(PokeAPI::Types::ContestType).should be_true
    type.id.should eq 3
    type.name.should eq "cute"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.contest_type("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.contest_type(0)
    end
  end

  it "should raise a NoResourceError is no contest type was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/contest-type/found-no-contest/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.contest_type("found-no-contest")
    end
  end
end

describe ".contest_effect" do
  it "should return contest effect" do
    test_data = File.read("./spec/data/contest-effect.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/contest-effect/17/")
      .to_return(status: 200, body: test_data)

    effect = PokeAPI.contest_effect(17)

    effect.is_a?(PokeAPI::Types::ContestEffect).should be_true
    effect.id.should eq 17
  end

  it "should raise an ArgumentError if id is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.contest_effect(0)
    end
  end

  it "should raise an NoResourceError if no contest effect was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/contest-effect/1337/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.contest_effect(1337)
    end
  end
end

describe ".super_contest_effect" do
  it "should return super contest effect" do
    test_data = File.read("./spec/data/super-contest-effect.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/super-contest-effect/12/")
      .to_return(status: 200, body: test_data)

    super_effect = PokeAPI.super_contest_effect(12)

    super_effect.is_a?(PokeAPI::Types::SuperContestEffect).should be_true
    super_effect.id.should eq 12
  end

  it "should raise an ArgumentError if id is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.super_contest_effect(0)
    end
  end

  it "should raise an NoResourceError if no super contest effect was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/super-contest-effect/999/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.super_contest_effect(999)
    end
  end
end
