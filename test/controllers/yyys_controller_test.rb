require 'test_helper'

class YyysControllerTest < ActionController::TestCase
  setup do
    @yyy = yyys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yyys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yyy" do
    assert_difference('Yyy.count') do
      post :create, yyy: { www: @yyy.www }
    end

    assert_redirected_to yyy_path(assigns(:yyy))
  end

  test "should show yyy" do
    get :show, id: @yyy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yyy
    assert_response :success
  end

  test "should update yyy" do
    patch :update, id: @yyy, yyy: { www: @yyy.www }
    assert_redirected_to yyy_path(assigns(:yyy))
  end

  test "should destroy yyy" do
    assert_difference('Yyy.count', -1) do
      delete :destroy, id: @yyy
    end

    assert_redirected_to yyys_path
  end
end
