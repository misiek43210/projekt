require 'test_helper'

class ArchiwumsControllerTest < ActionController::TestCase
  setup do
    @archiwum = archiwums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archiwums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archiwum" do
    assert_difference('Archiwum.count') do
      post :create, archiwum: { ID_wizyty: @archiwum.ID_wizyty, ID_wpisu: @archiwum.ID_wpisu, historia: @archiwum.historia, inf_dod: @archiwum.inf_dod }
    end

    assert_redirected_to archiwum_path(assigns(:archiwum))
  end

  test "should show archiwum" do
    get :show, id: @archiwum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @archiwum
    assert_response :success
  end

  test "should update archiwum" do
    patch :update, id: @archiwum, archiwum: { ID_wizyty: @archiwum.ID_wizyty, ID_wpisu: @archiwum.ID_wpisu, historia: @archiwum.historia, inf_dod: @archiwum.inf_dod }
    assert_redirected_to archiwum_path(assigns(:archiwum))
  end

  test "should destroy archiwum" do
    assert_difference('Archiwum.count', -1) do
      delete :destroy, id: @archiwum
    end

    assert_redirected_to archiwums_path
  end
end
