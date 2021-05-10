require "./spec_helper"

describe ".move" do
  it "should return a move" do
    test_data = File.read("./spec/data/move.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move/577/")
      .to_return(status: 200, body: test_data)

    move = PokeAPI.move(577)

    move.is_a?(PokeAPI::Types::Move).should be_true
    move.id.should eq 577
    move.name.should eq "draining-kiss"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.move(0)
    end
  end

  it "should raise a NoResourceError if no ??? was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move("???")
    end
  end
end

describe ".move_ailment" do
  it "should return a move ailment" do
    test_data = File.read("./spec/data/move-ailment.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-ailment/-1/")
      .to_return(status: 200, body: test_data)

    ailment = PokeAPI.move_ailment(-1)

    ailment.is_a?(PokeAPI::Types::MoveAilment).should be_true
    ailment.id.should eq -1
    ailment.name.should eq "unknown"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_ailment("")
    end
  end

  it "should raise an ArgumentError if identifier is lower than -1" do
    expect_raises(ArgumentError) do
      PokeAPI.move_ailment(-2)
    end
  end

  it "should raise a NoResourceError if no move ailment was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-ailment/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_ailment("???")
    end
  end
end

describe ".move_battle_style" do
  it "should return a move battle style" do
    test_data = File.read("./spec/data/move-battle-style.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-battle-style/1/")
      .to_return(status: 200, body: test_data)

    battle_style = PokeAPI.move_battle_style(1)

    battle_style.is_a?(PokeAPI::Types::MoveBattleStyle).should be_true
    battle_style.id.should eq 1
    battle_style.name.should eq "attack"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_battle_style("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.move_battle_style(0)
    end
  end

  it "should raise a NoResourceError if no move battle style was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-battle-style/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_battle_style("???")
    end
  end
end

describe ".move_category" do
  it "should return a move category" do
    test_data = File.read("./spec/data/move-category.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-category/5/")
      .to_return(status: 200, body: test_data)

    category = PokeAPI.move_category(5)

    category.is_a?(PokeAPI::Types::MoveCategory).should be_true
    category.id.should eq 5
    category.name.should eq "swagger"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_category("")
    end
  end

  it "should raise a NoResourceError if no move category was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-category/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_category("???")
    end
  end
end

describe ".move_damage_class" do
  it "should return a move damage class" do
    test_data = File.read("./spec/data/move-damage-class.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-damage-class/2/")
      .to_return(status: 200, body: test_data)

    damage_class = PokeAPI.move_damage_class(2)

    damage_class.is_a?(PokeAPI::Types::MoveDamageClass).should be_true
    damage_class.id.should eq 2
    damage_class.name.should eq "physical"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_damage_class("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.move_damage_class(0)
    end
  end

  it "should raise a NoResourceError if no move damage class was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-damage-class/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_damage_class("???")
    end
  end
end

describe ".move_learn_method" do
  it "should return a move learn method" do
    test_data = File.read("./spec/data/move-learn-method.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-learn-method/tutor/")
      .to_return(status: 200, body: test_data)

    learn_method = PokeAPI.move_learn_method("tutor")

    learn_method.is_a?(PokeAPI::Types::MoveLearnMethod).should be_true
    learn_method.id.should eq 3
    learn_method.name.should eq "tutor"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_learn_method("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.move_learn_method(0)
    end
  end

  it "should raise a NoResourceError if no move learn method was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-learn-method/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_learn_method("???")
    end
  end
end

describe ".move_target" do
  it "should return a move target" do
    test_data = File.read("./spec/data/move-target.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-target/1/")
      .to_return(status: 200, body: test_data)

    target = PokeAPI.move_target(1)

    target.is_a?(PokeAPI::Types::MoveTarget).should be_true
    target.id.should eq 1
    target.name.should eq "specific-move"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.move_target("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.move_target(0)
    end
  end

  it "should raise a NoResourceError if no move target was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/move-target/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.move_target("???")
    end
  end
end