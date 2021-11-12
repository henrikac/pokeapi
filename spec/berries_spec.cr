require "./spec_helper"

describe ".berry" do
  it "should return requested berry" do
    test_data = File.read("./spec/data/berry.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry/2/")
      .to_return(status: 200, body: test_data)

    berry = PokeAPI.berry(2)

    berry.is_a?(PokeAPI::Types::Berry).should be_true
    berry.id.should eq 2
    berry.name.should eq "chesto"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.berry("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.berry(0)
    end
  end

  it "should raise NoResourceError if no berry was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry/super-unknown-berry/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.berry("super-unknown-berry")
    end
  end
end

describe ".berry_firmness" do
  it "should return requested berry firmness" do
    test_data = File.read("./spec/data/berry-firmness.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry-firmness/4/")
      .to_return(status: 200, body: test_data)

    firmness = PokeAPI.berry_firmness(4)

    firmness.is_a?(PokeAPI::Types::BerryFirmness).should be_true
    firmness.id.should eq 4
    firmness.name.should eq "very-hard"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.berry_firmness("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.berry_firmness(0)
    end
  end

  it "should raise NoResourceError if no firmness was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry-firmness/unknown-firmness/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.berry_firmness("unknown-firmness")
    end
  end
end

describe ".berry_flavor" do
  it "should return requested berry flavor" do
    test_data = File.read("./spec/data/berry-flavor.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry-flavor/spicy/")
      .to_return(status: 200, body: test_data)

    flavor = PokeAPI.berry_flavor("spicy")

    flavor.is_a?(PokeAPI::Types::BerryFlavor).should be_true
    flavor.id.should eq 1
    flavor.name.should eq "spicy"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.berry_flavor("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.berry_flavor(0)
    end
  end

  it "should raise NoResourceError if no flavor was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/berry-flavor/unknown-flavor/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.berry_flavor("unknown-flavor")
    end
  end
end
