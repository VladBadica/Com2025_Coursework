class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change
    create_table :competitions do |t|
      t.string :name, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
