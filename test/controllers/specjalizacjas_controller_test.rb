require 'test_helper'

class SpecjalizacjasControllerTest < ActionController::TestCase
  setup do
    @specjalizacja = specjalizacjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specjalizacjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specjalizacja" do
    assert_difference('Specjalizacja.count') do
      post :create, specjalizacja: { ID_specjalizacji: @specjalizacja.ID_specjalizacji, specjalizacja: @specjalizacja.specjalizacja }
    end

    assert_redirected_to specjalizacja_path(assigns(:specjalizacja))
  end

  test "should show specjalizacja" do
    get :show, id: @specjalizacja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specjalizacja
    assert_response :success
  end

  test "should update specjalizacja" do
    patch :update, id: @specjalizacja, specjalizacja: { ID_specjalizacji: @specjalizacja.ID_specjalizacji, specjalizacja: @specjalizacja.specjalizacja }
    assert_redirected_to specjalizacja_path(assigns(:specjalizacja))
  end

  test "should destroy specjalizacja" do
    assert_difference('Specjalizacja.count', -1) do
      delete :destroy, id: @specjalizacja
    end

    assert_redirected_to specjalizacjas_path
  end
end
