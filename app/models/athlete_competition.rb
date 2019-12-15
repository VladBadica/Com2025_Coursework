class AthleteCompetition < ApplicationRecord
  # the association bewtween the models
  belongs_to :athlete
  belongs_to :competition
end
