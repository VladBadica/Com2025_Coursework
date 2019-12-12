class AddIndexToAthlete < ActiveRecord::Migration[5.2]
  def change
    add_index :athletes, :name, unique: true
  end
end
