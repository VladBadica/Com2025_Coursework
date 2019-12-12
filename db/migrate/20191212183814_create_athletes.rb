class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name, null: false
      t.string :sex, null: false
      t.integer :age, null: false
      t.float :weight, null: false
      t.string :description

      t.timestamps
    end
  end
end
