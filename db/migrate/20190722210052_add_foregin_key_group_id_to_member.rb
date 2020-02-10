# Created 7/21/2019 by Kori Kuzma
# Description: Added foreign key to member
class AddForeginKeyGroupIdToMember < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :group, foreign_key: true, index: true
  end
end
