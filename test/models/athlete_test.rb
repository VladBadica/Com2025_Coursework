require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  
  test 'should not save empty athlete' do
    athlete = Athlete.new
    athlete.save
    refute athlete.valid?    
  end

  test 'should save valid athlete' do
    athlete = Athlete.new
    athlete.name = 'Mike Ross'
    athlete.sex = 'male'
    athlete.weight = 68
    athlete.age = 19
    athlete.description = 'A young star'
    assert athlete.save
  end

  test 'should not save duplicate athlete name' do
    athlete = Athlete.new 
    athlete.name = 'Mike Ross'
    athlete.sex = 'male'
    athlete.weight = 68
    athlete.age = 20
    athlete.description = 'A young star'
    assert athlete.save 

    athlete1 = Athlete.new
    athlete1.name = 'Mike Ross'
    athlete1.sex = 'male'
    athlete1.weight = 68
    athlete1.age = 20
    athlete1.description = 'A young star'
    athlete1.save
    refute athlete1.valid?
  end

  test 'should not save athlete invalid name' do
    athlete = Athlete.new(name: 'Name1', sex: 'male', age: 20, weight: 70)
    assert_not athlete.save
  end

  test 'should not save athlete invalid sex' do
    athlete = Athlete.new(name: 'Name', sex: 'males', age: 20, weight: 70)
    assert_not athlete.save
  end

  test 'should not save athlete invalid age' do
    athlete = Athlete.new(name: 'Name', sex: 'male', age: 202, weight: 70)
    assert_not athlete.save
  end

  test 'should not save athlete invalid description' do
    athlete = Athlete.new(name: 'Name', sex: 'male', age: 20, weight: 70, description: "A 414*^£")
    assert_not athlete.save
  end
end
