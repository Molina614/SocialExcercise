# Created 7/11/2019 by Nur Hersi
class CreateLiftings < ActiveRecord::Migration[5.2]
  def change
    create_table :liftings, id: false do |t|
      t.decimal :weight

      t.timestamps
    end
  end
end
