# Created 7/22/2019 by Nick Hackman
# Description: Remove eighteen_plus from a Post
class RemoveColumnEighteenPlusFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :eighteen_plus
  end
end
