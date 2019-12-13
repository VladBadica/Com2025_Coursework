class CreateAthleteCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :athlete_competitions do |t|
      t.belongs_to :athlete, foreign_key: true
      t.belongs_to :competition, foreign_key: true

      t.timestamps
    end
  end
end
