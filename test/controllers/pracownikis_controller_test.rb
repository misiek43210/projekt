require 'test_helper'

class PracownikisControllerTest < ActionController::TestCase
  setup do
    @pracowniki = pracownikis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracownikis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pracowniki" do
    assert_difference('Pracowniki.count') do
      post :create, pracowniki: { id: @pracowniki.id, name: @pracowniki.name }
    end

    assert_redirected_to pracowniki_path(assigns(:pracowniki))
  end

  test "should show pracowniki" do
    get :show, id: @pracowniki
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pracowniki
    assert_response :success
  end

  test "should update pracowniki" do
    patch :update, id: @pracowniki, pracowniki: { id: @pracowniki.id, name: @pracowniki.name }
    assert_redirected_to pracowniki_path(assigns(:pracowniki))
  end

  test "should destroy pracowniki" do
    assert_difference('Pracowniki.count', -1) do
      delete :destroy, id: @pracowniki
    end

    assert_redirected_to pracownikis_path
  end
end
