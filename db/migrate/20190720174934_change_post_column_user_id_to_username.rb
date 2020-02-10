# Created 7/20/2019 by Nick Hackman
# Description: Changed the column 'user_id' to 'username' in Posts Table
class ChangePostColumnUserIdToUsername < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :user_id, :username
    change_column :posts, :username, :string
  end
end
