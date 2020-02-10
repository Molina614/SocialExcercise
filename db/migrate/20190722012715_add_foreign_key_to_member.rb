# Created 7/21/2019 by Kori Kuzma
# Description: Added foreign key to member and renamed the column
class AddForeignKeyToMember < ActiveRecord::Migration[5.2]
  def change
    add_reference :members, :user, foreign_key: true, index: true
    change_column :members, :user_id, :string
    rename_column :members, :user_id, :username
  end
end
