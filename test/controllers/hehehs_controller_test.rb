require 'test_helper'

class HehehsControllerTest < ActionController::TestCase
  setup do
    @heheh = hehehs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hehehs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heheh" do
    assert_difference('Heheh.count') do
      post :create, heheh: { indexx: @heheh.indexx, name: @heheh.name }
    end

    assert_redirected_to heheh_path(assigns(:heheh))
  end

  test "should show heheh" do
    get :show, id: @heheh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heheh
    assert_response :success
  end

  test "should update heheh" do
    patch :update, id: @heheh, heheh: { indexx: @heheh.indexx, name: @heheh.name }
    assert_redirected_to heheh_path(assigns(:heheh))
  end

  test "should destroy heheh" do
    assert_difference('Heheh.count', -1) do
      delete :destroy, id: @heheh
    end

    assert_redirected_to hehehs_path
  end
end
