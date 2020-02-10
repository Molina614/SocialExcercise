# Created 7/22/2019 by Jon Foltz
# Add inheritence columns
class AddActableToExercise < ActiveRecord::Migration[5.2]
  # Add inheritence columns
  def change
    add_column :exercises, :actable_id, :integer
    add_column :exercises, :actable_type, :string
  end
end
