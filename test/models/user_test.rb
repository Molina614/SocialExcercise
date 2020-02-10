# Created 7/12/1029 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: Changed to create instead of new
# Description: Test for user model

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name: 'kori', gender: 'female',
                     username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21)
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'gender should not be valid' do 
    @user.gender = 'she'
    assert_not @user.valid?
  end

  test 'email should not be valid' do
    @user.email = 'kori.com'
    assert_not @user.valid?
  end

  test 'password too short' do
    @user.password = 'k'
    assert_not @user.valid?
  end

  test "should not be following user" do
    patrick = users :patrick
    sandy  = users :sandy
    assert_not patrick.following? sandy
  end
  
  test "should follow user" do
    patrick = users :patrick
    sandy  = users :sandy
    patrick.follow sandy 
    assert patrick.following? sandy
    assert sandy.followers.include? patrick 
  end

  test "should unfollow user" do
    patrick = users :patrick
    sandy  = users :sandy
    patrick.follow sandy 
    patrick.unfollow sandy
    assert_not patrick.following? sandy
  end
end
