# Created 7/16/2019 by Nick Hackman
# Description: Remove column subtype from Comment
class RemoveColumnSubtypeInComment < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :subtype
  end
end
