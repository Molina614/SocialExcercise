# Migration fie to add foreign key reference in cardio
class AddForeignKeyToCardio < ActiveRecord::Migration[5.2]
  def change
    add_reference :cardios, :exercise, foreign_key: true
  end
end
