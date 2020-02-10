# Migration file for the cardio class
# Updated to have calories
class AddCaloriesToCardio < ActiveRecord::Migration[5.2]
  def change
    add_column :cardios, :calories, :decimal
  end
end
