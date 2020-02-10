# Created 7/16/2019 by Nick Hackman
# Description: Change column from text to String because the size of content has a limit of 250
class ChangeColumnTypeContentToStringInCommentAndPost < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :content, :string
    change_column :comments, :content, :string
  end
end
