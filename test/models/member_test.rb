# Created 7/20/2019 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: Removed date field, changed new to create
# Description: Test cases for member model
require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: 'kori', gender: 'female', username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password1823242', age: 21)
    @group = Group.create(name: 'group1')
    @member = Member.create(ranking: 1, username: @user.username, group_id: @group.id) 
  end


  test 'should be valid' do
    assert @member.valid?
  end

  test 'ranking should not be valid' do
    @member.ranking = 'one'
    assert @member.invalid?
  end
end