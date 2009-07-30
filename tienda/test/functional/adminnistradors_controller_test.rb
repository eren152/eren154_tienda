require 'test_helper'

class AdminnistradorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminnistradors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminnistrador" do
    assert_difference('Adminnistrador.count') do
      post :create, :adminnistrador => { }
    end

    assert_redirected_to adminnistrador_path(assigns(:adminnistrador))
  end

  test "should show adminnistrador" do
    get :show, :id => adminnistradors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => adminnistradors(:one).to_param
    assert_response :success
  end

  test "should update adminnistrador" do
    put :update, :id => adminnistradors(:one).to_param, :adminnistrador => { }
    assert_redirected_to adminnistrador_path(assigns(:adminnistrador))
  end

  test "should destroy adminnistrador" do
    assert_difference('Adminnistrador.count', -1) do
      delete :destroy, :id => adminnistradors(:one).to_param
    end

    assert_redirected_to adminnistradors_path
  end
end
