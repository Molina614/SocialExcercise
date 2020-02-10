# Created 7/11/2019 by Gilberto Molina Badillo
# Description: dependencies of workout

# Edited 7/17/2019 by Gilberto Molina Badillo
# removed date, made a table for it and created a dependency
class Workout < ApplicationRecord
  validates :name, presence: true, length: { in: 1..20 }
  belongs_to :user, foreign_key: 'username'
  has_many :exercises
  has_many :workout_whens
  accepts_nested_attributes_for :exercises
  validates :exercise, presence: true
end
