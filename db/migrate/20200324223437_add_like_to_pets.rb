class AddLikeToPets < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :like, foreign_key: true
  end
end
