class DropGroupComments < ActiveRecord::Migration[5.2]
  def change
    drop_table :group_comments
  end
end
