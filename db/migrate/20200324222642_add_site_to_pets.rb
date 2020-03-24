class AddSiteToPets < ActiveRecord::Migration[5.2]
  def change
    add_column :pets, :site, :text
  end
end
