require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get updates" do
    get :updates
    assert_response :success
  end

  test "should get application" do
    get :application
    assert_response :success
  end

  test "should get travel" do
    get :travel
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
