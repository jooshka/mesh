class AddRefToSortToEntities < ActiveRecord::Migration[5.0]
  def change
    add_reference :entities, :sort
  end
end
