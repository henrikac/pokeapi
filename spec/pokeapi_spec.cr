require "./spec_helper"

describe ".resource" do
  it "should return first 20 items by default" do
    test_data = File.read("./spec/data/resource-pokemon-default.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/?limit=20&offset=0")
      .to_return(status: 200, body: test_data)
    
    resources = PokeAPI.resource("pokemon")

    resources.is_a?(PokeAPI::Types::ResourceList).should be_true
    resources.next_page.should eq "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20"
    resources.previous_page.should be_nil
    resources.results.size.should eq 20
  end

  it "should return data based on custom offset and limit" do
    test_data = File.read("./spec/data/resource-pokemon-custom.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/?limit=5&offset=50")
      .to_return(status: 200, body: test_data)

    resources = PokeAPI.resource("pokemon", limit: 5, offset: 50)

    resources.is_a?(PokeAPI::Types::ResourceList).should be_true
    resources.next_page.should eq "https://pokeapi.co/api/v2/pokemon?offset=55&limit=5"
    resources.previous_page.should eq "https://pokeapi.co/api/v2/pokemon?offset=45&limit=5"
    resources.results.size.should eq 5
  end

  it "should raise a NoResourceError if invalid endpoint entered" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/unknown-endpoint/?limit=20&offset=0")
      .to_return(status: 404)
    
    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.resource("unknown-endpoint")
    end
  end
end