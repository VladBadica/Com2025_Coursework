class CreateAthletes < ActiveRecord::Migration[5.2]
  def change
    create_table :athletes do |t|
      t.string :name
      t.int :age
      t.float :weight
      t.string :sex
      t.text :description

      t.timestamps
    end
  end
end
