# Migration file for the members table
class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :ranking

      t.timestamps
    end
  end
end
