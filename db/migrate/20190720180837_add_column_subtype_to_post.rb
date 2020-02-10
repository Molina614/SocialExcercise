# Created 7/20/2019 by Nick Hackman
# Description: Added column Subtype to Post
class AddColumnSubtypeToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :subtype, :string
  end
end
