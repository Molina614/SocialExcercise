# Created 7/20/2019 by Nick Hackman
# Edited 7/22/2019 by Nick Hackman, adding multi table inheritance
# Description: GroupComment Class
class GroupPost < ApplicationRecord
  belongs_to :group
  acts_as :post
end
