require 'test_helper'

class CardioTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: 'kori', gender: 'female',
                        username: 'korikuzma', bio: 'bio', email: 'kuzma@gmail.com', password: 'password18', age: 21)
    @workout = Workout.create(name: 'monday workout', username: @user.username)
    @cardio = Cardio.create duration: '14:00', incline: 5.0, lap: 3.0, distance: 1600.0, calories: 450.5,
                            reps: 1.0, set: 1.0, description: 'Fun', name: 'Monday', author: 'Jon', workout_id: @workout.id
  end

  test 'is valid' do
    assert @cardio.valid?
  end
end
