# Created By Jon Foltz on 7/12/2019
# Updated cardio table to store laps as a decimal
class ChangeLapToBeDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :cardios, :lap, :decimal
  end
end
