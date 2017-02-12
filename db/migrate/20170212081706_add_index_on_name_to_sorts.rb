class AddIndexOnNameToSorts < ActiveRecord::Migration[5.0]
  def change
    add_index :sorts, :name, unique: true
  end
end
