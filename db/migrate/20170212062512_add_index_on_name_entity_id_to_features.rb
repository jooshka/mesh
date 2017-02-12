class AddIndexOnNameEntityIdToFeatures < ActiveRecord::Migration[5.0]
  def change
    add_index :features, [:name, :entity_id], unique: true
  end
end
