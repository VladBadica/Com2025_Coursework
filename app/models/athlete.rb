class Athlete < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :sex, presence: true
    validates :weight, presence: true
    validates :age, presence: true

    has_many :athlete_competitions
end
