require "./spec_helper"

describe ".ability" do
  it "should return a ability" do
    test_data = File.read("./spec/data/ability.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/ability/1/")
      .to_return(status: 200, body: test_data)

    ability = PokeAPI.ability(1)

    ability.is_a?(PokeAPI::Types::Ability).should be_true
    ability.id.should eq 1
    ability.name.should eq "stench"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.ability("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.ability(0)
    end
  end

  it "should raise a NoResourceError if no ability was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/ability/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.ability("???")
    end
  end
end

describe ".characteristic" do
  it "should return a characteristic" do
    test_data = File.read("./spec/data/characteristic.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/characteristic/1/")
      .to_return(status: 200, body: test_data)

    characteristic = PokeAPI.characteristic(1)

    characteristic.is_a?(PokeAPI::Types::Characteristic).should be_true
    characteristic.id.should eq 1
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.characteristic(0)
    end
  end

  it "should raise a NoResourceError if no characteristic was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/characteristic/999999/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.characteristic(999999)
    end
  end
end

describe ".egg_group" do
  it "should return a egg group" do
    test_data = File.read("./spec/data/egg-group.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/egg-group/1/")
      .to_return(status: 200, body: test_data)

    egg_group = PokeAPI.egg_group(1)

    egg_group.is_a?(PokeAPI::Types::EggGroup).should be_true
    egg_group.id.should eq 1
    egg_group.name.should eq "monster"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.egg_group("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.egg_group(0)
    end
  end

  it "should raise a NoResourceError if no egg group was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/egg-group/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.egg_group("???")
    end
  end
end

describe ".gender" do
  it "should return a gender" do
    test_data = File.read("./spec/data/gender.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/gender/3/")
      .to_return(status: 200, body: test_data)

    gender = PokeAPI.gender(3)

    gender.is_a?(PokeAPI::Types::Gender).should be_true
    gender.id.should eq 3
    gender.name.should eq "genderless"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.gender("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.gender(0)
    end
  end

  it "should raise a NoResourceError if no gender was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/gender/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.gender("???")
    end
  end
end

describe ".growth_rate" do
  it "should return a growth rate" do
    test_data = File.read("./spec/data/growth-rate.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/growth-rate/1/")
      .to_return(status: 200, body: test_data)

    rate = PokeAPI.growth_rate(1)

    rate.is_a?(PokeAPI::Types::GrowthRate).should be_true
    rate.id.should eq 1
    rate.name.should eq "slow"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.growth_rate("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.growth_rate(0)
    end
  end

  it "should raise a NoResourceError if no growth rate was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/growth-rate/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.growth_rate("???")
    end
  end
end

describe ".nature" do
  it "should return a nature" do
    test_data = File.read("./spec/data/nature.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/nature/1/")
      .to_return(status: 200, body: test_data)

    nature = PokeAPI.nature(1)

    nature.is_a?(PokeAPI::Types::Nature).should be_true
    nature.id.should eq 1
    nature.name.should eq "hardy"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.nature("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.nature(0)
    end
  end

  it "should raise a NoResourceError if no nature was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/nature/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.nature("???")
    end
  end
end

describe ".pokeathlon_stat" do
  it "should return a pokeathlon stat" do
    test_data = File.read("./spec/data/pokeathlon-stat.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokeathlon-stat/1/")
      .to_return(status: 200, body: test_data)

    stat = PokeAPI.pokeathlon_stat(1)

    stat.is_a?(PokeAPI::Types::PokeathlonStat).should be_true
    stat.id.should eq 1
    stat.name.should eq "speed"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokeathlon_stat("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokeathlon_stat(0)
    end
  end

  it "should raise a NoResourceError if no pokeathlon stat was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokeathlon-stat/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokeathlon_stat("???")
    end
  end
end

describe ".pokemon" do
  it "should return a pokemon" do
    test_data = File.read("./spec/data/pokemon.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/1/")
      .to_return(status: 200, body: test_data)

    pokemon = PokeAPI.pokemon(1)

    pokemon.is_a?(PokeAPI::Types::Pokemon).should be_true
    pokemon.id.should eq 1
    pokemon.name.should eq "bulbasaur"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon(0)
    end
  end

  it "should raise a NoResourceError if no pokemon was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon("???")
    end
  end
end

describe ".pokemon_location_area" do
  it "should return a pokemon location area" do
    test_data = File.read("./spec/data/pokemon-location-area.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/1/encounters/")
      .to_return(status: 200, body: test_data)

    location_area = PokeAPI.pokemon_location_area(1)

    location_area.is_a?(Array(PokeAPI::Types::LocationAreaEncounter)).should be_true
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_location_area("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_location_area(0)
    end
  end

  it "should raise a NoResourceError if no pokemon location area was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon/???/encounters/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_location_area("???")
    end
  end
end

describe ".pokemon_color" do
  it "should return a pokemon color" do
    test_data = File.read("./spec/data/pokemon-color.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-color/1/")
      .to_return(status: 200, body: test_data)

    color = PokeAPI.pokemon_color(1)

    color.is_a?(PokeAPI::Types::PokemonColor).should be_true
    color.id.should eq 1
    color.name.should eq "black"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_color("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_color(0)
    end
  end

  it "should raise a NoResourceError if no pokemon color was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-color/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_color("???")
    end
  end
end

describe ".pokemon_form" do
  it "should return a pokemon form" do
    test_data = File.read("./spec/data/pokemon-form.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-form/1/")
      .to_return(status: 200, body: test_data)

    form = PokeAPI.pokemon_form(1)

    form.is_a?(PokeAPI::Types::PokemonForm).should be_true
    form.id.should eq 1
    form.name.should eq "bulbasaur"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_form("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_form(0)
    end
  end

  it "should raise a NoResourceError if no pokemon form was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-form/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_form("???")
    end
  end
end

describe ".pokemon_habitat" do
  it "should return a pokemon habitat" do
    test_data = File.read("./spec/data/pokemon-habitat.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-habitat/1/")
      .to_return(status: 200, body: test_data)

    habitat = PokeAPI.pokemon_habitat(1)

    habitat.is_a?(PokeAPI::Types::PokemonHabitat).should be_true
    habitat.id.should eq 1
    habitat.name.should eq "cave"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_habitat("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_habitat(0)
    end
  end

  it "should raise a NoResourceError if no pokemon habitat was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-habitat/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_habitat("???")
    end
  end
end

describe ".pokemon_shape" do
  it "should return a pokemon shape" do
    test_data = File.read("./spec/data/pokemon-shape.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-shape/1/")
      .to_return(status: 200, body: test_data)

    shape = PokeAPI.pokemon_shape(1)

    shape.is_a?(PokeAPI::Types::PokemonShape).should be_true
    shape.id.should eq 1
    shape.name.should eq "ball"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_shape("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_shape(0)
    end
  end

  it "should raise a NoResourceError if no pokemon shape was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-shape/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_shape("???")
    end
  end
end

describe ".pokemon_species" do
  it "should return a pokemon species" do
    test_data = File.read("./spec/data/pokemon-species.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-species/1/")
      .to_return(status: 200, body: test_data)

    species = PokeAPI.pokemon_species(1)

    species.is_a?(PokeAPI::Types::PokemonSpecies).should be_true
    species.id.should eq 1
    species.name.should eq "bulbasaur"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_species("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.pokemon_species(0)
    end
  end

  it "should raise a NoResourceError if no pokemon species was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/pokemon-species/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.pokemon_species("???")
    end
  end
end

describe ".stat" do
  it "should return a stat" do
    test_data = File.read("./spec/data/stat.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/stat/1/")
      .to_return(status: 200, body: test_data)

    stat = PokeAPI.stat(1)

    stat.is_a?(PokeAPI::Types::Stat).should be_true
    stat.id.should eq 1
    stat.name.should eq "hp"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.stat("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.stat(0)
    end
  end

  it "should raise a NoResourceError if no stat was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/stat/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.stat("???")
    end
  end
end

describe ".type" do
  it "should return a type" do
    test_data = File.read("./spec/data/type.json")
    WebMock.stub(:get, "https://pokeapi.co/api/v2/type/1/")
      .to_return(status: 200, body: test_data)

    type = PokeAPI.type(1)

    type.is_a?(PokeAPI::Types::Type).should be_true
    type.id.should eq 1
    # type.name.should eq "specific-move"
  end

  it "should raise an ArgumentError if identifier is an empty string" do
    expect_raises(ArgumentError) do
      PokeAPI.type("")
    end
  end

  it "should raise an ArgumentError if identifier is 0" do
    expect_raises(ArgumentError) do
      PokeAPI.type(0)
    end
  end

  it "should raise a NoResourceError if no type was found" do
    WebMock.stub(:get, "https://pokeapi.co/api/v2/type/???/")
      .to_return(status: 404)

    expect_raises(PokeAPI::NoResourceError) do
      PokeAPI.type("???")
    end
  end
end