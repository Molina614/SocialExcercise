# Created 7/20/2019 by Nick Hackman
# Description: Multiple Table inheritance from Post for a Group
class CreateGroupPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :group_posts do |t|
      t.references :group, foreign_key: true
    end
  end
end
