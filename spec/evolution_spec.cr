require "./spec_helper"

describe ".evolution_chain" do
  it "should return an evolution chain" do
    test_data = File.read("./spec/data/evolution-chain.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/evolution-chain/239/")
      .to_return(status: 200, body: test_data)

    chain = PokeAPI.evolution_chain(239)

    chain.is_a?(PokeAPI::Types::EvolutionChain).should be_true
    chain.id.should eq 239
  end

  it "should raise an ArgumentError if id is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.evolution_chain(0)
    end
  end

  it "should raise a NoResourceError if no evolution chain was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/evolution-chain/1298/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.evolution_chain(1298)
    end
  end
end

describe ".evolution_trigger" do
  it "should return an evolution trigger" do
    test_data = File.read("./spec/data/evolution-trigger.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/evolution-trigger/trade/")
      .to_return(status: 200, body: test_data)

    trigger = PokeAPI.evolution_trigger("trade")

    trigger.is_a?(PokeAPI::Types::EvolutionTrigger).should be_true
    trigger.id.should eq 2
    trigger.name.should eq "trade"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.evolution_trigger("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.evolution_trigger(0)
    end
  end

  it "should raise a NoResourceError if no evolution trigger was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/evolution-trigger/623/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.evolution_trigger(623)
    end
  end
end