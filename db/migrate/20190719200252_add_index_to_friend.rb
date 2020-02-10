class AddIndexToFriend < ActiveRecord::Migration[5.2]
  def change
    add_index :friends, :follower_id
    add_index :friends, :followed_id
    add_index :friends, [:follower_id, :followed_id], unique: true
  end
end
