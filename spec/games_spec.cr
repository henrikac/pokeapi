require "./spec_helper"

describe ".generation" do
  it "should return a generation" do
    test_data = File.read("./spec/data/generation.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/generation/6/")
      .to_return(status: 200, body: test_data)

    generation = PokeAPI.generation(6)

    generation.is_a?(PokeAPI::Types::Generation).should be_true
    generation.id.should eq 6
    generation.name.should eq "generation-vi"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.generation("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.generation(0)
    end
  end

  it "should raise a NoResourceError if no generation was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/generation/generation-vvvi/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.generation("generation-vvvi")
    end
  end
end

describe ".pokedex" do
  it "should return a pokedex" do
    test_data = File.read("./spec/data/pokedex.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokedex/kalos-mountain/")
      .to_return(status: 200, body: test_data)

    pokedex = PokeAPI.pokedex("kalos-mountain")

    pokedex.is_a?(PokeAPI::Types::Pokedex).should be_true
    pokedex.id.should eq 14
    pokedex.name.should eq "kalos-mountain"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokedex("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokedex(0)
    end
  end

  it "should raise a NoResourceError if no pokedex was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokedex/my-first-pokedex/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokedex("my-first-pokedex")
    end
  end
end

describe ".version" do
  it "should return a version" do
    test_data = File.read("./spec/data/version.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/version/1/")
      .to_return(status: 200, body: test_data)

    version = PokeAPI.version(1)

    version.is_a?(PokeAPI::Types::Version).should be_true
    version.id.should eq 1
    version.name.should eq "red"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.version("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.version(0)
    end
  end

  it "should raise a NoResourceError if no version was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/version/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.version("???")
    end
  end
end

describe ".version_group" do
  it "should return a version group" do
    test_data = File.read("./spec/data/version-group.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/version-group/9/")
      .to_return(status: 200, body: test_data)

    version_group = PokeAPI.version_group(9)

    version_group.is_a?(PokeAPI::Types::VersionGroup).should be_true
    version_group.id.should eq 9
    version_group.name.should eq "platinum"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.version_group("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.version_group(0)
    end
  end

  it "should raise a NoResourceError if no version group was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/version-group/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.version_group("???")
    end
  end
end