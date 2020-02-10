# Created 7/22/2019 by Nick Hackman
# Description: Remove MTI fields
class RemoveColumnMtiInComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :actable_id
    remove_column :comments, :actable_type
  end
end
