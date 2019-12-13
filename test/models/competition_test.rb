require 'test_helper'

class CompetitionTest < ActiveSupport::TestCase

  test 'should not save empty competition' do
    competition = Competition.new
    competition.save
    refute competition.valid?    
  end

  test 'should save valid competition' do
    competition = Competition.new
    competition.name = 'Vlad Badica'
    competition.date = Date.new(2019,1,12)
    competition.save
    assert competition.valid?
  end

  test 'should not save duplicate competition name' do
    competition = Competition.new
    competition.name = 'Sheffield'
    competition.date = Date.new(2019,1,12)
    competition.save
    assert competition.valid?

    competition1 = Competition.new
    competition1.name = 'Sheffield'
    competition1.date = Date.new(2019,1,12)
    competition1.save
    refute competition1.valid?  
  end
end
