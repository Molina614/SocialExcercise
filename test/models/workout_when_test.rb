require 'test_helper'

class WorkoutWhenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name: 'kori', gender: 'female',
      username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21)
    @workout = Workout.create(name: "monday workout", username: @user.username)
    @workout_when = WorkoutWhen.create(date:"2019-07-22", time:"14:00", workout_id: @workout.id)
  end


  test 'should be valid' do
    assert @workout_when.valid?
  end

end
