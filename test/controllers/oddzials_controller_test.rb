require 'test_helper'

class OddzialsControllerTest < ActionController::TestCase
  setup do
    @oddzial = oddzials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oddzials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oddzial" do
    assert_difference('Oddzial.count') do
      post :create, oddzial: { indexx: @oddzial.indexx, name: @oddzial.name }
    end

    assert_redirected_to oddzial_path(assigns(:oddzial))
  end

  test "should show oddzial" do
    get :show, id: @oddzial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oddzial
    assert_response :success
  end

  test "should update oddzial" do
    patch :update, id: @oddzial, oddzial: { indexx: @oddzial.indexx, name: @oddzial.name }
    assert_redirected_to oddzial_path(assigns(:oddzial))
  end

  test "should destroy oddzial" do
    assert_difference('Oddzial.count', -1) do
      delete :destroy, id: @oddzial
    end

    assert_redirected_to oddzials_path
  end
end
