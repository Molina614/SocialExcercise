class ChangeFollowerIdToString < ActiveRecord::Migration[5.2]
  def change
    change_column :friends, :follower_id, :string
    change_column :friends, :followed_id, :string
  end
end
