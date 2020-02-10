# Created 7/11/2019 by Nur Hersi
# Description: Lifting class for weighted exercises
class Lifting < ApplicationRecord
  validates :weight,
            presence: true,
            format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
            numericality: { greater_than: 0, less_than: 1000 }
  belongs_to :exercise, foreign_key: 'id'
end
