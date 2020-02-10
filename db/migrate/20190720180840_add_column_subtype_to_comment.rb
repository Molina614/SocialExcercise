# Created 7/20/2019 by Nick Hackman
# Description: Added column Subtype to Post
class AddColumnSubtypeToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :subtype, :string
  end
end
