class Competition < ApplicationRecord
    # a competition must have a name and a date, the name must be unique
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true

    # creates the association bewtween the models
    has_many :athlete_competitions
end
