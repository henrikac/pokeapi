require "./spec_helper"

describe ".item" do
  it "should return an item" do
    test_data = File.read("./spec/data/item.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item/117/")
      .to_return(status: 200, body: test_data)

    item = PokeAPI.item(117)

    item.is_a?(PokeAPI::Types::Item).should be_true
    item.id.should eq 117
    item.name.should eq "bloom-mail"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.item("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.item(0)
    end
  end

  it "should raise a NoResourceError if no item was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.item("???")
    end
  end
end

describe ".item_attribute" do
  it "should return an item attribute" do
    test_data = File.read("./spec/data/item-attribute.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-attribute/underground/")
      .to_return(status: 200, body: test_data)

    item_attribute = PokeAPI.item_attribute("underground")

    item_attribute.is_a?(PokeAPI::Types::ItemAttribute).should be_true
    item_attribute.id.should eq 8
    item_attribute.name.should eq "underground"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.item_attribute("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.item_attribute(0)
    end
  end

  it "should raise a NoResourceError if no item attribute was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-attribute/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.item_attribute("???")
    end
  end
end

describe ".item_category" do
  it "should return an item category" do
    test_data = File.read("./spec/data/item-category.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-category/1/")
      .to_return(status: 200, body: test_data)

    item_category = PokeAPI.item_category(1)

    item_category.is_a?(PokeAPI::Types::ItemCategory).should be_true
    item_category.id.should eq 1
    item_category.name.should eq "stat-boosts"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.item_category("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.item_category(0)
    end
  end

  it "should raise a NoResourceError if no item category was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-category/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.item_category("???")
    end
  end
end

describe ".item_fling_effect" do
  it "should return an item fling effect" do
    test_data = File.read("./spec/data/item-fling-effect.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-fling-effect/poison/")
      .to_return(status: 200, body: test_data)

    fling_effect = PokeAPI.item_fling_effect("poison")

    fling_effect.is_a?(PokeAPI::Types::ItemFlingEffect).should be_true
    fling_effect.id.should eq 6
    fling_effect.name.should eq "poison"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.item_fling_effect("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.item_fling_effect(0)
    end
  end

  it "should raise a NoResourceError if no item fling effect was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-fling-effect/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.item_fling_effect("???")
    end
  end
end

describe ".item_pocket" do
  it "should return an item pocket" do
    test_data = File.read("./spec/data/item-pocket.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-pocket/2/")
      .to_return(status: 200, body: test_data)

    item_pocket = PokeAPI.item_pocket(2)

    item_pocket.is_a?(PokeAPI::Types::ItemPocket).should be_true
    item_pocket.id.should eq 2
    item_pocket.name.should eq "medicine"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.item_pocket("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.item_pocket(0)
    end
  end

  it "should raise a NoResourceError if no ??? was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/item-pocket/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.item_pocket("???")
    end
  end
end
