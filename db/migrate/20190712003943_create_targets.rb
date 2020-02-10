# Migration file for the targets table
class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.string :intensity

      t.timestamps
    end
  end
end
