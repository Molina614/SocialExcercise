# Created 7/11/2019 by Jon Foltz
# Model class for msucle object
class Muscle < ApplicationRecord
  has_many :targets
  has_many :exercises, through: :targets
  self.primary_key = :group
end
