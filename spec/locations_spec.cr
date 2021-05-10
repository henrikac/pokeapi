require "./spec_helper"

describe ".location" do
  it "should return a location" do
    test_data = File.read("./spec/data/location.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/location/682/")
      .to_return(status: 200, body: test_data)

    location = PokeAPI.location(682)

    location.is_a?(PokeAPI::Types::Location).should be_true
    location.id.should eq 682
    location.name.should eq "flood-chamber"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.location("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.location(0)
    end
  end

  it "should raise a NoResourceError if no location was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/location/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.location("???")
    end
  end
end

describe ".location_area" do
  it "should return a location area" do
    test_data = File.read("./spec/data/location-area.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/location-area/491/")
      .to_return(status: 200, body: test_data)

    location_area = PokeAPI.location_area(491)

    location_area.is_a?(PokeAPI::Types::LocationArea).should be_true
    location_area.id.should eq 491
    location_area.name.should eq "mt-ember-1f-cave-behind-team-rocket"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.location_area("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.location_area(0)
    end
  end

  it "should raise a NoResourceError if no location area was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/location-area/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.location_area("???")
    end
  end
end

describe ".pal_park_area" do
  it "should return a pal park area" do
    test_data = File.read("./spec/data/pal-park-area.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pal-park-area/4/")
      .to_return(status: 200, body: test_data)

    park_area = PokeAPI.pal_park_area(4)

    park_area.is_a?(PokeAPI::Types::PalParkArea).should be_true
    park_area.id.should eq 4
    park_area.name.should eq "pond"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pal_park_area("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pal_park_area(0)
    end
  end

  it "should raise a NoResourceError if no pal park area was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pal-park-area/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pal_park_area("???")
    end
  end
end

describe ".region" do
  it "should return a region" do
    test_data = File.read("./spec/data/region.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/region/kanto/")
      .to_return(status: 200, body: test_data)

    region = PokeAPI.region("kanto")

    region.is_a?(PokeAPI::Types::Region).should be_true
    region.id.should eq 1
    region.name.should eq "kanto"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.region("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.region(0)
    end
  end

  it "should raise a NoResourceError if no region was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/region/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.region("???")
    end
  end
end