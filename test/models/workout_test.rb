require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name: 'kori', gender: 'female',
      username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21)
    @workout = Workout.new(name: "monday workout", username: @user.username)
  end

  test 'should be valid' do
    assert @workout.valid?
  end

  test 'name should not be valid' do
    @workout.name = ''
    assert @workout.invalid?
  end
end
