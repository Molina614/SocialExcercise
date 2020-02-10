# Created by Jon Foltz on 7/11/2019
# Migration table for the muscle group table
class CreateMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :muscles, id: false do |t|
      t.string :group

      t.timestamps
    end
  end
end
