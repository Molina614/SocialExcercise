require 'test_helper'

class FriendTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    # @user = User.new(name: 'kori', gender: 'female',
    #                  username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21)
    # @other_user = User.new(name: 'ko', gender: 'female',
    #                  username: 'kuzma', bio: 'hi', email: 'kuz@gmail.com', password: 'password22', age: 22)
    # @friend = Friend.new()
    # @friend.follower_id = 'korikuzma'
    # @friend.followed_id = 'kuzma'
    @friend = Friend.new(follower_id: users(:patrick).username,
                                     followed_id: users(:sandy).username)
  end

  test "should be valid" do
    assert @friend.valid?
  end

  test "should require a follower_id" do
    @friend.follower_id = nil
    assert_not @friend.valid?
  end

  test "should require a followed_id" do
    @friend.followed_id = nil
    assert_not @friend.valid?
  end
end
