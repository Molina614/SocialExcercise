# Created 7/22/2019 by Nick Hackman
# Description: Remove column subtype that was used in other MTI Gem
class RemoveColumnSubtype < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :subtype
  end
end
