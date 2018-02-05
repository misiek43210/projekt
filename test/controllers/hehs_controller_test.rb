require 'test_helper'

class HehsControllerTest < ActionController::TestCase
  setup do
    @heh = hehs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hehs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heh" do
    assert_difference('Heh.count') do
      post :create, heh: { indexx: @heh.indexx, name: @heh.name }
    end

    assert_redirected_to heh_path(assigns(:heh))
  end

  test "should show heh" do
    get :show, id: @heh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heh
    assert_response :success
  end

  test "should update heh" do
    patch :update, id: @heh, heh: { indexx: @heh.indexx, name: @heh.name }
    assert_redirected_to heh_path(assigns(:heh))
  end

  test "should destroy heh" do
    assert_difference('Heh.count', -1) do
      delete :destroy, id: @heh
    end

    assert_redirected_to hehs_path
  end
end
