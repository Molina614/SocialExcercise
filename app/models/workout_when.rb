# Created 7/17/2019 by Gilberto Molina Badillo
# Description: dependencies of dates of workouts
class WorkoutWhen < ApplicationRecord
    validates :date, presence: true
    validates :time, presence: true
    belongs_to :workout, foreign_key: 'workout_id'
end
