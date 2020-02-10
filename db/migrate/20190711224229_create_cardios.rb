# Created By Jon Foltz on 7/11/2019
# The migration file to create the table for Cardio
class CreateCardios < ActiveRecord::Migration[5.2]
  def change
    create_table :cardios do |t|
      t.time :duration
      t.integer :lap
      t.decimal :distance
      t.decimal :incline

      t.timestamps
    end
  end
end
