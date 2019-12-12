class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.float :weight
      t.string :description

      t.timestamps
    end
  end
end
