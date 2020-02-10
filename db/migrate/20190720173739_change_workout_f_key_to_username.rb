class ChangeWorkoutFKeyToUsername < ActiveRecord::Migration[5.2]
  def change
    change_column :workouts, :user_id, :string
    rename_column :workouts, :user_id, :username
  end
end
