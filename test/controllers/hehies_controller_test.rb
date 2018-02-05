require 'test_helper'

class HehiesControllerTest < ActionController::TestCase
  setup do
    @hehy = hehies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hehies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hehy" do
    assert_difference('Hehy.count') do
      post :create, hehy: { indexx: @hehy.indexx, name: @hehy.name }
    end

    assert_redirected_to hehy_path(assigns(:hehy))
  end

  test "should show hehy" do
    get :show, id: @hehy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hehy
    assert_response :success
  end

  test "should update hehy" do
    patch :update, id: @hehy, hehy: { indexx: @hehy.indexx, name: @hehy.name }
    assert_redirected_to hehy_path(assigns(:hehy))
  end

  test "should destroy hehy" do
    assert_difference('Hehy.count', -1) do
      delete :destroy, id: @hehy
    end

    assert_redirected_to hehies_path
  end
end
