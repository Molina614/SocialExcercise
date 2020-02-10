# Created 7/20/2019 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: changed one to patrick to fix fixture bug
# Description: Test cases for users controller
require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:patrick)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { name: 'kori', gender: 'female', username: 'MyString1', bio: 'bio', email: 'kuzma2@gmail.com', password: 'password18', age: 21 } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { name: 'kori', gender: 'female', username: 'MyString2', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21} }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
