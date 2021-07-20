require './lib/team'
require './lib/player'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("France")

    expect(team).to be_an_instance_of(Team)
  end

  it 'has attributes' do
    team = Team.new("France")

    expect(team.country).to eq("France")
  end
end

# team.eliminated?
# # => false
#
# team.eliminated = true
#
# team.eliminated?
# # => true
#
# team.players
# # => []
#
# mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
# # => #<Player:0x00007fe0d02bd280...>
#
# pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
# # => #<Player:0x00007fe0d0851138...>
#
# team.add_player(mbappe)
#
# team.add_player(pogba)
#
# team.players
# # => [#<Player:0x00007fe0d02bd280...>, #<Player:0x00007fe0d0851138...>]
#
# team.players_by_position("midfielder")
# # => [#<Player:0x00007fe0d0851138...>]
#
# team.players_by_position("defender")
# # => []
