require 'test_helper'

class CsgsControllerTest < ActionController::TestCase
  setup do
    @csg = csgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csg" do
    assert_difference('Csg.count') do
      post :create, csg: { nazwa: @csg.nazwa, wersja: @csg.wersja }
    end

    assert_redirected_to csg_path(assigns(:csg))
  end

  test "should show csg" do
    get :show, id: @csg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csg
    assert_response :success
  end

  test "should update csg" do
    patch :update, id: @csg, csg: { nazwa: @csg.nazwa, wersja: @csg.wersja }
    assert_redirected_to csg_path(assigns(:csg))
  end

  test "should destroy csg" do
    assert_difference('Csg.count', -1) do
      delete :destroy, id: @csg
    end

    assert_redirected_to csgs_path
  end
end
