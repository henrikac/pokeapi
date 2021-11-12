require "./spec_helper"

describe ".language" do
  it "should return a language" do
    test_data = File.read("./spec/data/language.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/language/1/")
      .to_return(status: 200, body: test_data)

    language = PokeAPI.language(1)

    language.is_a?(PokeAPI::Types::Language).should be_true
    language.id.should eq 1
    language.name.should eq "ja-Hrkt"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.language("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.language(0)
    end
  end

  it "should raise a NoResourceError if no language was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/language/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.language("???")
    end
  end
end
