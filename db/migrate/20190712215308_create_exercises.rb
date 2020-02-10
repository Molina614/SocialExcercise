# Migration class for the exercises table
class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :type
      t.integer :reps
      t.integer :set
      t.string :description
      t.string :name
      t.string :author

      t.timestamps
    end
  end
end
