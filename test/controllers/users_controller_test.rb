require "test_helper"

class UsersControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('User.count') do
      post :create, user: { name: "Sherlock", email: "sher@email.com", password: "1234" }
    end

    assert_redirected_to root_path
  end

  def test_follow
    roro = users(:roro)
    assert roro.following? users(:two)
    refute roro.following? users(:lonely)
  end
end
