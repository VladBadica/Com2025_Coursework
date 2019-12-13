require 'test_helper'

class AthleteCompetitionTest < ActiveSupport::TestCase
  test 'should not save empty athlete_competition' do
    athlete_competition = AthleteCompetition.new
    athlete_competition.save
    refute athlete_competition.valid?    
  end

  test 'should save valid athlete_competition' do
    athlete = Athlete.new
    athlete.name = 'Mike Ross'
    athlete.sex = 'male'
    athlete.weight = 68.5
    athlete.age = 19
    athlete.description = 'A young star'

    competition = Competition.new
    competition.name = 'Sheffield'
    competition.date = Date.new(2019,1,12)

    athlete_competition = AthleteCompetition.new
    athlete_competition.athlete = athlete
    athlete_competition.competition = competition
    assert athlete.valid?
  end
end
