require 'test_helper'

class OddzialiesControllerTest < ActionController::TestCase
  setup do
    @oddzialy = oddzialies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oddzialies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oddzialy" do
    assert_difference('Oddzialy.count') do
      post :create, oddzialy: { ID_oddzialu: @oddzialy.ID_oddzialu, oddzial: @oddzialy.oddzial }
    end

    assert_redirected_to oddzialy_path(assigns(:oddzialy))
  end

  test "should show oddzialy" do
    get :show, id: @oddzialy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oddzialy
    assert_response :success
  end

  test "should update oddzialy" do
    patch :update, id: @oddzialy, oddzialy: { ID_oddzialu: @oddzialy.ID_oddzialu, oddzial: @oddzialy.oddzial }
    assert_redirected_to oddzialy_path(assigns(:oddzialy))
  end

  test "should destroy oddzialy" do
    assert_difference('Oddzialy.count', -1) do
      delete :destroy, id: @oddzialy
    end

    assert_redirected_to oddzialies_path
  end
end
