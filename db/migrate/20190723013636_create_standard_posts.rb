# Created 7/22/2019 by Nick Hackman
# Description: A Standard Post that has no fields other than timestamp and id
class CreateStandardPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :standard_posts, &:timestamps
  end
end
