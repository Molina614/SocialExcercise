# Created 7/20/2019 by Nick Hackman
# Description: Changed the column 'user_id' to 'username' in Comments Table
class ChangeCommentColumnUserIdToUsername < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_id, :string
    rename_column :comments, :user_id, :username
  end
end
