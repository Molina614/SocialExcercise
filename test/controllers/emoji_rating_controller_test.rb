require 'test_helper'

class EmojiRatingControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get emoji_ratings_new_url
    assert_response :success
  end
end
