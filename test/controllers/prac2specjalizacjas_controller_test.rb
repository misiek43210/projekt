require 'test_helper'

class Prac2specjalizacjasControllerTest < ActionController::TestCase
  setup do
    @prac2specjalizacja = prac2specjalizacjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prac2specjalizacjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prac2specjalizacja" do
    assert_difference('Prac2specjalizacja.count') do
      post :create, prac2specjalizacja: { ID_pracownika: @prac2specjalizacja.ID_pracownika, ID_specjalizacji: @prac2specjalizacja.ID_specjalizacji }
    end

    assert_redirected_to prac2specjalizacja_path(assigns(:prac2specjalizacja))
  end

  test "should show prac2specjalizacja" do
    get :show, id: @prac2specjalizacja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prac2specjalizacja
    assert_response :success
  end

  test "should update prac2specjalizacja" do
    patch :update, id: @prac2specjalizacja, prac2specjalizacja: { ID_pracownika: @prac2specjalizacja.ID_pracownika, ID_specjalizacji: @prac2specjalizacja.ID_specjalizacji }
    assert_redirected_to prac2specjalizacja_path(assigns(:prac2specjalizacja))
  end

  test "should destroy prac2specjalizacja" do
    assert_difference('Prac2specjalizacja.count', -1) do
      delete :destroy, id: @prac2specjalizacja
    end

    assert_redirected_to prac2specjalizacjas_path
  end
end
