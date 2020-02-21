class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :species, null: false
      t.string :breed, null: false
      t.string :name, null: false
      t.date :dob
      t.string :favorite_toy

      t.timestamps
    end
  end
end
