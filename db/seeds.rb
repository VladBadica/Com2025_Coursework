# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    athlete = Athlete.where(name: 'Vlad Badica').first
    athlete.delete if athlete

    athlete = Athlete.create([name: 'Vlad Badica', age: 19, weight: 68.5, sex: 'male'])
    
    competition = Competition.where(name: 'Sheffield', date:Date.new(2019,1,12)).first
    competition.delete if competition

    competition = Competition.create([name: 'Sheffield', date:Date.new(2019,1,12)])