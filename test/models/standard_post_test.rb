require 'test_helper'

class StandardPostTest < ActiveSupport::TestCase
  def setup
    @user = User.create name: 'Nick', username: 'NickHackman', age: 21, password: 'this_is_a_password', gender: 'male',
                        email: 'example@test.com'
    @post = StandardPost.create content: 'Content', username: @user.username
  end

  test 'basic post, is valid' do
    assert @post.valid?
  end

  test 'add comment to a post' do
    comment = @post.comments.create content: 'Content', username: @user.username
    assert comment.valid?
    assert !@post.comments.empty?
  end

  test 'add comment to a post via id' do
    comment = Comment.create content: 'Content', username: @user.username, commentable_id: @post.id, commentable_type: 'Post'
    assert comment.valid?
    assert !@post.comments.empty?
  end
end
