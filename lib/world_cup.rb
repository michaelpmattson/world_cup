class WorldCup
  attr_reader :year,
              :teams

  def initialize(year, teams)
    @year  = year
    @teams = teams
  end

  def active_players_by_position(position)
    players = []
    teams.each do |team|
      players << team.players_by_position(position) unless team.eliminated?
    end
    players.flatten
  end

  def all_players_by_position
    all_players_by_position = {}
    all_players.group_by do |player|
      player.position
    end
  end

  def all_players
    all_players = []
    teams.each do |team|
      team.players.each do |player|
        all_players << player
      end
    end

    all_players
  end
end
