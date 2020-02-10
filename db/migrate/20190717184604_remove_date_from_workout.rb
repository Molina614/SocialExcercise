class RemoveDateFromWorkout < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :date, :string
  end
end
