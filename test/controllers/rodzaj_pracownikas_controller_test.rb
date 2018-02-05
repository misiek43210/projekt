require 'test_helper'

class RodzajPracownikasControllerTest < ActionController::TestCase
  setup do
    @rodzaj_pracownika = rodzaj_pracownikas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rodzaj_pracownikas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rodzaj_pracownika" do
    assert_difference('RodzajPracownika.count') do
      post :create, rodzaj_pracownika: { ID_rodzajprac: @rodzaj_pracownika.ID_rodzajprac, rodazj_prac: @rodzaj_pracownika.rodazj_prac }
    end

    assert_redirected_to rodzaj_pracownika_path(assigns(:rodzaj_pracownika))
  end

  test "should show rodzaj_pracownika" do
    get :show, id: @rodzaj_pracownika
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rodzaj_pracownika
    assert_response :success
  end

  test "should update rodzaj_pracownika" do
    patch :update, id: @rodzaj_pracownika, rodzaj_pracownika: { ID_rodzajprac: @rodzaj_pracownika.ID_rodzajprac, rodazj_prac: @rodzaj_pracownika.rodazj_prac }
    assert_redirected_to rodzaj_pracownika_path(assigns(:rodzaj_pracownika))
  end

  test "should destroy rodzaj_pracownika" do
    assert_difference('RodzajPracownika.count', -1) do
      delete :destroy, id: @rodzaj_pracownika
    end

    assert_redirected_to rodzaj_pracownikas_path
  end
end
