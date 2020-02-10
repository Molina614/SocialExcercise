# Created 7/20/2019 by Kori Kuzma
# Edited 7/22/2019 by Kori Kuzma: Removed date field, changed new to create
# Description: Test cases for group model
require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  def setup
    @group = Group.create(name: 'Example')
  end

  test 'should be valid' do
    assert @group.valid?
  end

  test 'name should not be valid' do
    @group.name = ''
    assert @group.invalid?
  end
end
