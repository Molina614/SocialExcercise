# Created 7/16/2019 by Nick Hackman
# Description: Mirgration for Comments
class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.integer :commentable_id
      t.string :commentable_type
      t.actable null: true

      t.timestamps
    end
  end
end
