# Created 7/16/2019 by Nick Hackman
# Description: Mirgration for Posts
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.boolean :eighteen_plus
      t.actable null: true, allow_blank: true

      t.timestamps
    end
  end
end
