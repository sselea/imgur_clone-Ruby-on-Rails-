require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  test "should get controller" do
    get :controller
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

end
