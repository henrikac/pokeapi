# PokeAPI

Crystal wrapper library for [PokéAPI](https://pokeapi.co/docs/v2).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     pokeapi:
       github: henrikac/pokeapi
   ```

2. Run `shards install`

## Endpoints

### Berries
<details>
  <summary>Berries</summary>
  #### Berries `/berry/{id or name}/`
  #### Berry Firmnesses `/berry-firmness/{id or name}/`
  #### Berry Flavors `/berry-flavor/{id or name}/`
</details>
<details>
  <summary>Contests</summary>
  #### Contest Types `/contest-type/{id or name}/`
  #### Contest Effects `/contest-effect/{id}/`
  #### Super Contest Effects `/super-contest-effect/{id}/`
</details>
<details>
  <summary>Encounters</summary>
  #### Encounter Methods `/encounter-method/{id or name}/`
  #### Encounter Conditions `/encounter-condition/{id or name}/`
  #### Encounter Condition Values `/encounter-condition-value/{id or name}/`
</details>
<details>
  <summary>Evolution</summary>
  #### Evolution Chains `/evolution-chain/{id}/`
  #### Evolution Triggers `/evolution-trigger/{id or name}/`
</details>
<details>
  <summary>Games</summary>
  #### Generations `/generation/{id or name}/`
  #### Pokedexes `/pokedex/{id or name}/`
  #### Version `/version/{id or name}/`
  #### Version Groups `/version-group/{id or name}/`
</details>
<details>
  <summary>Items</summary>
  #### Item `/item/{id or name}/`
  #### Item Attributes `/item-attribute/{id or name}/`
  #### Item Categories `/item-category/{id or name}/`
  #### Item Fling Effects `/item-fling-effect/{id or name}/`
  #### Item Pockets `/item-pocket/{id or name}/`
</details>
<details>
  <summary>Locations</summary>
  #### Locations `/location/{id or name}/`
  #### Location Areas `/location-area/{id or name}/`
  #### Pal Park Areas `/pal-park-area/{id or name}/`
  #### Regions `/region/{id or name}/`
</details>
<details>
  <summary>Machines</summary>
  #### Machines `/machine/{id}/`
</details>
<details>
  <summary>Moves</summary>
  #### Moves `/move/{id or name}/`
  #### Move Allments `/move-ailment/{id or name}/`
  #### Move Battle Styles `/move-battle-style/{id or name}/`
  #### Move Categories `/move-category/{id or name}/`
  #### Move Damage Classes `/move-damage-class/{id or name}/`
  #### Move Learn Methods `/move-learn-method/{id or name}/`
  #### Move Targets `/move-target/{id or name}/`
</details>
<details>
  <summary>Pokémon</summary>
  #### Abilities `/ability/{id or name}/`
  #### Characteristics `/characteristic/{id}/`
  #### Egg Groups `/egg-group/{id or name}/`
  #### Genders `/gender/{id or name}/`
  #### Growth Rates `/growth-rate/{id or name}/`
  #### Natures `/nature/{id or name}/`
  #### Pokeathlon Stats `/pokeathlon-stat/{id or name}/`
  #### Pokemon `/pokemon/{id or name}/`
  #### Pokemon Location Areas `/pokemon/{id or name}/encounters/`
  #### Pokemon Colors `/pokemon-color/{id or name}/`
  #### Pokemon Forms `/pokemon-form/{id or name}/`
  #### Pokemon Habitats `/pokemon-habitat/{id or name}/`
  #### Pokemon Shapes `/pokemon-shape/{id or name}/`
  #### Pokemon Species `/pokemon-species/{id or name}/`
  #### Stats `/stat/{id or name}/`
  #### Types `/type/{id or name}/`
</details>

## Usage

#### Get a list of resources

To get a list of resources from any of the endpoints specified above use  

`.resource(endpoint : String, limit : UInt32 = 20, offset : UInt32 = 0)`

```crystal
require "pokeapi"

# returns a list of the first 20 pokémons
pokemons = PokeAPI.resource("pokemon")

# returns a list of 8 pokémons starting from #90 (if possible)
pokemons = PokeAPI.resource("pokemon", limit: 8, offset: 90)
```

#### Get a single item

Each of the endpoints has a corresponding method that can be used to get data from that specific endpoint, e.g. `.pokemon(identifier : String | UInt32)` for `/pokemon/{id or name}/`, `.growth_rate(identifier : String | UInt32)` for `/growth-rate/{id or name}/` and `.super_contest_effect(id : UInt32)` for `/super-contest-effect/{id}/`.

## Contributing

1. Fork it (<https://github.com/henrikac/pokeapi/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Henrik Christensen](https://github.com/henrikac) - creator and maintainer
