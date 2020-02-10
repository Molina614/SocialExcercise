# Created 7/10/2019 by Kori Kuzma
# Description: Model class for User

# Created 7/10/2019 by Kori Kuzma
# Edited 7/16/2019 by Nick Hackman Added Comments and Ratings to User
# Description: Class for User
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Description: validations for user
  validates :name, presence: true, length: { maximum: 75 }
  VALID_GENDER_REGEX = /\A(fe)?male|other|prefer not to say\z/.freeze
  validates :gender, presence: true, format: { with: VALID_GENDER_REGEX }
  validates :username, presence: true, uniqueness: { message: 'username already exits.' }
  validates :bio, length: { maximum: 100 }

  # Source: Ruby on Rails Tutorial, Chapter 6
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX, message: 'invalid email' }, uniqueness: true
  validates :password, presence: true, length: { minimum: 10 }
  validates :age, presence: true, numericality: { only_integer: true }

  # Description: Sets primary key to username
  self.primary_key = 'username'

  # Description: Relationships for user
  has_many :groups
  has_many :groups, through: :members
  has_many :workouts
  has_many :posts
  has_many :friends
  has_many :comments
  has_many :ratings

  has_many :active_friends, class_name: 'Friend',
                            foreign_key: 'follower_id',
                            dependent: :destroy
  has_many :passive_friends, class_name: 'Friend',
                             foreign_key: 'followed_id',
                             dependent: :destroy
  has_many :following, through: :active_friends, source: :followed
  has_many :followers, through: :passive_friends, source: :follower

  def follow user
    following << user
  end

  def unfollow user
    following.delete user
  end

  def following? user
    following.include? user
  end
end
