require 'test_helper'

class PracowniksControllerTest < ActionController::TestCase
  setup do
    @pracownik = pracowniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pracowniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pracownik" do
    assert_difference('Pracownik.count') do
      post :create, pracownik: { ID_pracownika: @pracownik.ID_pracownika, ID_rodzajprac: @pracownik.ID_rodzajprac, aktywny: @pracownik.aktywny, data_zatrudnienia: @pracownik.data_zatrudnienia, imie: @pracownik.imie, nazwisko: @pracownik.nazwisko, pesel: @pracownik.pesel, zarobki: @pracownik.zarobki }
    end

    assert_redirected_to pracownik_path(assigns(:pracownik))
  end

  test "should show pracownik" do
    get :show, id: @pracownik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pracownik
    assert_response :success
  end

  test "should update pracownik" do
    patch :update, id: @pracownik, pracownik: { ID_pracownika: @pracownik.ID_pracownika, ID_rodzajprac: @pracownik.ID_rodzajprac, aktywny: @pracownik.aktywny, data_zatrudnienia: @pracownik.data_zatrudnienia, imie: @pracownik.imie, nazwisko: @pracownik.nazwisko, pesel: @pracownik.pesel, zarobki: @pracownik.zarobki }
    assert_redirected_to pracownik_path(assigns(:pracownik))
  end

  test "should destroy pracownik" do
    assert_difference('Pracownik.count', -1) do
      delete :destroy, id: @pracownik
    end

    assert_redirected_to pracowniks_path
  end
end
