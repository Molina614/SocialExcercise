# Created 7/22/2019 by Jon Foltz
# Remove the forgien key to exercise
class RemoveForiegnKeyFromCardio < ActiveRecord::Migration[5.2]
  # Remove foreign key to exercise from cardio
  def change
    remove_column :cardios, :exercise_id
  end
end
