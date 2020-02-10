class CreateWorkoutWhens < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_whens do |t|
      t.date :date
      t.time :time
      t.references :workout, foreign_key: true
      t.timestamps
    end
  end
end
