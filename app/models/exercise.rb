# Created 7/12/2019 by Gilberto Molina Badillo
# Description: dependencies of exercise
class Exercise < ApplicationRecord
  actable
  validates :reps, presence: true
  validates :set, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :name, presence: true,  length: { maximum: 30 }
  validates :author, presence: true, length: { maximum: 70 }

  belongs_to :workout, foreign_key: 'workout_id'
  has_many :targets
  has_many :muscles, through: :targets
  has_one :lifting
  has_one :cardio
end
