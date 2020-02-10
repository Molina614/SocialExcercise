require 'test_helper'

class StandardPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @standard_post = standard_posts(:one)
  end

  test 'should get index' do
    get standard_posts_url
    assert_response :success
  end

  test 'should get new' do
    get new_standard_post_url
    assert_response :success
  end

  test 'should create standard_post' do
    assert_difference('StandardPost.count') do
      post standard_posts_url, params: { standard_post: {} }
    end

    assert_redirected_to standard_post_url(StandardPost.last)
  end

  test 'should show standard_post' do
    get standard_post_url(@standard_post)
    assert_response :success
  end

  test 'should get edit' do
    get edit_standard_post_url(@standard_post)
    assert_response :success
  end

  test 'should destroy standard_post' do
    assert_difference('StandardPost.count', -1) do
      delete standard_post_url(@standard_post)
    end

    assert_redirected_to standard_posts_url
  end
end
