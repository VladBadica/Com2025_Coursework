require 'test_helper'

class AthleteTest < ActiveSupport::TestCase

  test 'should not save empty athlete' do
    athlete = Athlete.new

    athlete.save
    refute athlete.valid?    
  end

  test 'should save valid athlete' do
    athlete = Athlete.new

    athlete.name = 'An athlete'
    athlete.sex = 'female'
    athlete.age = 1
    athlete.weight = 1.5
    
    athlete.save
    assert athlete.valid?
  end

  test 'should not save duplicate athlete name' do
    athlete = Athlete.new

    athlete.name = 'An athlete'
    athlete.sex = 'female'
    athlete.age = 1
    athlete.weight = 1.5
    
    athlete.save

    athlete2 = Athlete.new

    athlete2.name = 'An athlete'
    athlete2.sex = 'female'
    athlete2.age = 1
    athlete2.weight = 1.5
    
    athlete2.save

    refute athlete2.valid?
  end
end
