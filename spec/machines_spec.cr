require "./spec_helper"

describe ".machine" do
  it "should return a machine" do
    test_data = File.read("./spec/data/machine.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/machine/1/")
      .to_return(status: 200, body: test_data)

    machine = PokeAPI.machine(1)

    machine.is_a?(PokeAPI::Types::Machine).should be_true
    machine.id.should eq 1
  end

  it "should raise an ArgumentError if id is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.machine(0)
    end
  end

  it "should raise a NoResourceError if no machine was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/machine/999999/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.machine(999999)
    end
  end
end
