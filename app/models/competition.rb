class Competition < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :date, presence: true

    has_many :athlete_competitions
end
