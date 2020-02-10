# Created 7/10/2019 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: changed foreign key of group to group_id
# Description: Model class for Member
class Member < ApplicationRecord
  # Relationships for member
  belongs_to :user, foreign_key: 'username'
  belongs_to :group, foreign_key: 'group_id'

  # Description: validations for member
  validates :ranking, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 2 }
end
