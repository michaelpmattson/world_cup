require './lib/team'
require './lib/player'

RSpec.describe Team do
  context '#initialize' do
    it 'exists' do
      team = Team.new("France")

      expect(team).to be_an_instance_of(Team)
    end

    it 'has attributes' do
      team = Team.new("France")

      expect(team.country).to eq("France")
      expect(team.eliminated).to be(false)
      expect(team.players).to eq([])
    end
  end

  context '#eliminated?' do
    it 'verifies if eliminated' do
      team = Team.new("France")

      expect(team.eliminated?).to be(false)

      team.eliminated = true

      expect(team.eliminated?).to be(true)
    end
  end

  context '#add_player(player)' do
    it 'adds player' do
      team = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

      expect(team.players).to eq([])

      team.add_player(mbappe)
      team.add_player(pogba)

      expect(team.players).to eq([mbappe, pogba])
    end
  end

  context '#players_by_position(position)' do
    it 'returns array of players by position' do
      team = Team.new("France")
      mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
      pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

      team.add_player(mbappe)
      team.add_player(pogba)

      expect(team.players_by_position("midfielder")).to eq([pogba])
      expect(team.players_by_position("defender")).to eq([])
    end
  end
end
