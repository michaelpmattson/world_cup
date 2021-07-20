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
end
