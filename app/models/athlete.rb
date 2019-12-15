class Athlete < ApplicationRecord
    # all information but the description of an athlete must be present
    # the name needs to be unique(we assume all the athletes have different names)
    validates :name, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z ]{0,30}\z/,
    message: "Only allows letters, max 30 chars" }
    validates :sex, presence: true, format: { with: /\A(male|female)\z/,
    message: "Only male or female" }
    validates :weight, presence: true
    validates :age, presence: true, format: { with: /\A^[1-9][0-9]?$|^100\z/,
    message: "Age between 18 and 100" }
    validates :description, format: { with: /\A[a-zA-Z0-9,.() ]*+\z/,
    message: "only allows letters, numbers and ,.()" }

    # the association bewtween the models
    has_many :athlete_competitions
end
