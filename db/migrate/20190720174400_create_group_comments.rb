# Created 7/20/2019 by Nick Hackman
# Description: Multiple Table inheritance from Comment for a Group
class CreateGroupComments < ActiveRecord::Migration[5.2]
  def change
    create_table :group_comments do |t|
      t.references :group, foreign_key: true
    end
  end
end
