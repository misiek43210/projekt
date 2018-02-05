require 'test_helper'

class Prac2oddzialsControllerTest < ActionController::TestCase
  setup do
    @prac2oddzial = prac2oddzials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prac2oddzials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prac2oddzial" do
    assert_difference('Prac2oddzial.count') do
      post :create, prac2oddzial: { ID_Pracownika: @prac2oddzial.ID_Pracownika, ID_oddzialu: @prac2oddzial.ID_oddzialu }
    end

    assert_redirected_to prac2oddzial_path(assigns(:prac2oddzial))
  end

  test "should show prac2oddzial" do
    get :show, id: @prac2oddzial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prac2oddzial
    assert_response :success
  end

  test "should update prac2oddzial" do
    patch :update, id: @prac2oddzial, prac2oddzial: { ID_Pracownika: @prac2oddzial.ID_Pracownika, ID_oddzialu: @prac2oddzial.ID_oddzialu }
    assert_redirected_to prac2oddzial_path(assigns(:prac2oddzial))
  end

  test "should destroy prac2oddzial" do
    assert_difference('Prac2oddzial.count', -1) do
      delete :destroy, id: @prac2oddzial
    end

    assert_redirected_to prac2oddzials_path
  end
end
