class RemoveFavoriteToyFromPet < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :favorite_toy, :string
  end
end
