class AthleteCompetition < ApplicationRecord
  belongs_to :athlete
  belongs_to :competition
end
