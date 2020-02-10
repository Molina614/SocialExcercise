# Created 7/11/2019 by Gilberto Molina Badillo
# Description: Creates the tables for the workout
class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :date
      t.references :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
