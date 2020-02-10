require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @user = User.create name: 'Nick', username: 'NickHackman', age: 21, password: 'this_is_a_password', gender: 'male',
                        email: 'example@test.com'
    @post = StandardPost.create content: 'Content', username: @user.username
    @comment = @post.comments.create content: 'Content', username: @user.username
  end

  test 'Add comment to post' do
    assert @comment.valid?
  end

  test 'Add many comments to Comment' do
    10.times do
      comment = @comment.comments.create content: 'Content', username: @user.username
      assert comment.valid?
    end
    assert @comment.comments.size == 10
  end

  test 'Add many comments to comments' do
    comment = @comment
    15.times do
      comment = comment.comments.create content: 'Content', username: @user.username
    end
    @comment.comments.size == 1
  end
end
