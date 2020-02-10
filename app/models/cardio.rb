# Created on 7/11/2019 by Jon Foltz
# Model class for cardio objects
class Cardio < ApplicationRecord
  validates :incline,
            numericality:
            { only_decimal: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
  validates :distance, :lap,
            numericality: { only_decimal: true, greater_than_or_equal_to: 0 }
  acts_as :exercise
end
