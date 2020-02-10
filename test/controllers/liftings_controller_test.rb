require 'test_helper'

class LiftingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifting = liftings(:one)
  end

  test "should get index" do
    get liftings_url
    assert_response :success
  end

  test "should get new" do
    get new_lifting_url
    assert_response :success
  end

  test "should create lifting" do
    assert_difference('Lifting.count') do
      post liftings_url, params: { lifting: {  } }
    end

    assert_redirected_to lifting_url(Lifting.last)
  end

  test "should show lifting" do
    get lifting_url(@lifting)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifting_url(@lifting)
    assert_response :success
  end

  test "should update lifting" do
    patch lifting_url(@lifting), params: { lifting: {  } }
    assert_redirected_to lifting_url(@lifting)
  end

  test "should destroy lifting" do
    assert_difference('Lifting.count', -1) do
      delete lifting_url(@lifting)
    end

    assert_redirected_to liftings_url
  end
end
