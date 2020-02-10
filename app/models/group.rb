# Created 7/10/2019 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: Removed date
# Description: Model class for Group
class Group < ApplicationRecord
  # Relationships for group
  has_many :users
  has_many :users, through: :members
  has_many :group_posts

  # Description: validations for group
  validates :name, presence: true, length: { maximum: 50 }
end
