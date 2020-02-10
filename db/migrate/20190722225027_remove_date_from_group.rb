# Created 7/22/2019 by Kori Kuzma
# Description: Removed unncessary column from group
class RemoveDateFromGroup < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :date, :string
  end
end
