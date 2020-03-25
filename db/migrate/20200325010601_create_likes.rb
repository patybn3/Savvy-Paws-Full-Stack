class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :like_count, default: 0
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
