# Created 7/11/2019 by Nur Hersi
# Description: Target junction table between Exercise and Muscle groups
class Target < ApplicationRecord
  belongs_to :exercise
  belongs_to :muscle
end
