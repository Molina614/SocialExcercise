# Migration file to add exercise reference to lifting
class AddForeignKeyToLifting < ActiveRecord::Migration[5.2]
  def change
    add_reference :liftings, :exercise, foreign_key: true
  end
end
