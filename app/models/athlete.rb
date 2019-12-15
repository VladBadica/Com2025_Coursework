class Athlete < ApplicationRecord
    # all information but the description of an athlete must be present
    # the name needs to be unique(we assume all the athletes have different names)
    validates :name, presence: true, uniqueness: true
    validates :sex, presence: true
    validates :weight, presence: true
    validates :age, presence: true

    # the association bewtween the models
    has_many :athlete_competitions
end
