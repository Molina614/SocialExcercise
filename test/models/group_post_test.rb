require 'test_helper'

class GroupPostTest < ActiveSupport::TestCase
  def setup
    @user = User.create name: 'Nick', username: 'NickHackman', age: 21, password: 'this_is_a_password', gender: 'male',
                        email: 'example@test.com'
    @group = Group.create name: 'Test1'
    @grp_post = GroupPost.create content: 'Content', username: @user.username, group_id: @group.id
  end

  test 'basic group post, is valid' do
    assert @grp_post.valid?
  end

  test 'add comment to group post' do
    comment = @grp_post.comments.create content: 'Content', username: 'NickHackman'
    assert comment.valid?
  end
end
