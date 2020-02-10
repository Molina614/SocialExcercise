# Created 7/22/2019 by Jon Foltz
# Added foreign key to workouts in exercises
class AddReferenceToWorkoutToExercise < ActiveRecord::Migration[5.2]
  # Added foreign key to workouts in exercises
  def change
    add_reference :exercises, :workout, foreign_key: true, index: true
  end
end
