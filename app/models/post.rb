# Created 7/16/2019 by Nick Hackman
# Edited 7/20/2019 by Nick Hackman added acts_as_superclass
# Edited 7/22/2019 by Nick Hackman fixed bug with Username and foreign_key
# Description: A post that has content of a given length
class Post < ApplicationRecord
  actable
  validates :content, length: { in: 3..250 }, presence: true

  belongs_to :user, foreign_key: 'username'
  has_many :comments, as: :commentable
  has_many :ratings, as: :rateable

  # Created 7/16/2019 by Nick Hackman
  # Whether or not a Post was edited
  def edited?
    @created_at != @updated_at
  end
end
