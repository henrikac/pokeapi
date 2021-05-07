# PokeAPI

TODO: Write a description here

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     pokemoncr:
       github: henrikac/pokeapi
   ```

2. Run `shards install`

## Supported Endpoints

* [X] Berries
  * [X] Berries `/berry/{id or name}/`
  * [X] Berry Firmnesses `/berry-firmness/{id or name}/`
  * [X] Berry Flavors `/berry-flavor/{id or name}/`
* [ ] Contests
  * [ ] Contest Types
  * [ ] Contest Effects
  * [ ] Super Contest Effects
* [ ] Encounters
  * [ ] Encounter Methods
  * [ ] Encounter Conditions
  * [ ] Encounter Condition Values
* [ ] Evolution
  * [ ] Evolution Chains
  * [ ] Evolution Triggers
* [ ] Games
  * [ ] Generations
  * [ ] Pokedexes
  * [ ] Version
  * [ ] Version Groups
* [ ] Items
  * [ ] Item
  * [ ] Item Attributes
  * [ ] Item Categories
  * [ ] Item Fling Effects
  * [ ] Item Pockets
* [ ] Locations
  * [ ] Locations
  * [ ] Location Areas
  * [ ] Pal Park Areas
  * [ ] Regions
* [ ] Machines
  * [ ] Machines
* [ ] Moves
  * [ ] Moves
  * [ ] Move Allments
  * [ ] Move Battle Styles
  * [ ] Move Categories
  * [ ] Move Damage Classes
  * [ ] Move Learn Methods
  * [ ] Move Targets
* [X] Pokémon
  * [X] Abilities `/ability/{id or name}/`
  * [X] Characteristics `/characteristic/{id}/`
  * [X] Egg Groups `/egg-group/{id or name}/`
  * [X] Genders `/gender/{id or name}/`
  * [X] Growth Rates `/growth-rate/{id or name}/`
  * [X] Natures `/nature/{id or name}/`
  * [X] Pokeathlon Stats `/pokeathlon-stat/{id or name}/`
  * [X] Pokemon `/pokemon/{id or name}/`
  * [X] Pokemon Location Areas `/pokemon/{id or name}/encounters/`
  * [X] Pokemon Colors `/pokemon-color/{id or name}/`
  * [X] Pokemon Forms `/pokemon-form/{id or name}/`
  * [X] Pokemon Habitats `/pokemon-habitat/{id or name}/`
  * [X] Pokemon Shapes `/pokemon-shape/{id or name}/`
  * [X] Pokemon Species `/pokemon-species/{id or name}/`
  * [X] Stats `/stat/{id or name}/`
  * [X] Types `/type/{id or name}/`


## Usage

```crystal
require "pokeapi"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/henrikac/pokeapi/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Henrik Christensen](https://github.com/henrikac) - creator and maintainer
