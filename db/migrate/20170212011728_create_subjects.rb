class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.references :entity
      t.references :creator

      t.timestamps
    end
  end
end
