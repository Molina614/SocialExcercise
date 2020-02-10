class CreateEmojiRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :emoji_ratings do |t|
      t.references :user, foreign_key: true
      t.string :emoji
      t.integer :rateable_id
      t.string :rateable_type

      t.timestamps
    end
  end
end
