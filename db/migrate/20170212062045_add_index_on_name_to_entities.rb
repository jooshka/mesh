class AddIndexOnNameToEntities < ActiveRecord::Migration[5.0]
  def change
    add_index :entities, :name, unique: true
  end
end
