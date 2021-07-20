require './lib/world_cup'
require './lib/team'
require './lib/player'

RSpec.describe WorldCup do
  context '#initialize' do
    it 'exists' do
      france = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

      france.add_player(mbappe)
      france.add_player(pogba)

      croatia = Team.new("Croatia")
      modric = Player.new({name: "Luka Modric", position: "midfielder"})
      vida = Player.new({name: "Domagoj Vida", position: "defender"})

      croatia.add_player(modric)
      croatia.add_player(vida)

      world_cup = WorldCup.new(2018, [france, croatia])

      expect(world_cup).to be_an_instance_of(WorldCup)
    end
  end
end
#

# # => #<WorldCup:0x00007f936a010d10...>
#
# world_cup.year
# # => 2018
#
# world_cup.teams
# # => [#<Team:0x00007f936a313698...>, #<Team:0x00007f936a3afea8...>]
#
# world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>, #<Player:0x00007f936a3595f8...>]
#
# croatia.eliminated = true
#
# world_cup.active_players_by_position("midfielder")
# # => [#<Player:0x00007f936c035eb0...>]
