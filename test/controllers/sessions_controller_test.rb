require "test_helper"

class SessionsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_response :success
  end

  def test_create
    login_user
    assert_equal users(:one).id, session["user_id"]
  end

  def test_destroy
    login_user
    get :destroy
    assert_nil session["user_id"]
  end

  private

  def login_user
    post :create, session: { email: "roro@email.com", password: "1234" }
  end
end
