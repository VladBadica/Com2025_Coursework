class AddIndexToCompetition < ActiveRecord::Migration[5.2]
  def change
    add_index :competitions, :name, unique: true
  end
end
