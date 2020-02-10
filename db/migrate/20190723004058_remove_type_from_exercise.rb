# Created 7/22/2019 by Jon Foltz
# Migration to remove type from column
class RemoveTypeFromExercise < ActiveRecord::Migration[5.2]
  # Removes type column from exercises
  def change
    remove_column :exercises, :type
  end
end
