require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  
  test 'should not save empty athlete' do
    athlete = Athlete.new
    athlete.save
    refute athlete.valid?    
  end

  test 'should save valid athlete' do
    athlete = Athlete.new
    athlete.name = 'Vlad Badica'
    athlete.sex = 'male'
    athlete.weight = 68.5
    athlete.age = 19
    athlete.description = 'A young star'
    athlete.save
    assert athlete.valid?
  end

  test 'should not save duplicate athlete name' do
    athlete = Athlete.new 
    athlete.name = 'Vlad Badica'
    athlete.sex = 'male'
    athlete.weight = 68.5
    athlete.age = 19
    athlete.description = 'A young star'
    athlete.save
    assert athlete.valid?

    athlete1 = Athlete.new
    athlete1.name = 'Vlad Badica'
    athlete1.sex = 'male'
    athlete1.weight = 68.5
    athlete1.age = 19
    athlete1.description = 'A young star'
    athlete1.save
    refute athlete1.valid?
  end
end
