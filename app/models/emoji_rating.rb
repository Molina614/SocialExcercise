# Created 7/16/2019 by Nick Hackman
# Description: An EmojiRating that belongs to a User and belongs to something that is Rateable
class EmojiRating < ApplicationRecord
  validates :emoji, presence: true
  belongs_to :user
  belongs_to :rateable, polymorphic: true

  self.primary_keys = :user, :rateable
end
