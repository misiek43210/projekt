require 'test_helper'

class WizytaControllerTest < ActionController::TestCase
  setup do
    @wizytum = wizyta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wizyta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wizytum" do
    assert_difference('Wizytum.count') do
      post :create, wizytum: { ID_lekarza: @wizytum.ID_lekarza, ID_pacjenta: @wizytum.ID_pacjenta, ID_recepcjonisty: @wizytum.ID_recepcjonisty, ID_wizyty: @wizytum.ID_wizyty, termin: @wizytum.termin }
    end

    assert_redirected_to wizytum_path(assigns(:wizytum))
  end

  test "should show wizytum" do
    get :show, id: @wizytum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wizytum
    assert_response :success
  end

  test "should update wizytum" do
    patch :update, id: @wizytum, wizytum: { ID_lekarza: @wizytum.ID_lekarza, ID_pacjenta: @wizytum.ID_pacjenta, ID_recepcjonisty: @wizytum.ID_recepcjonisty, ID_wizyty: @wizytum.ID_wizyty, termin: @wizytum.termin }
    assert_redirected_to wizytum_path(assigns(:wizytum))
  end

  test "should destroy wizytum" do
    assert_difference('Wizytum.count', -1) do
      delete :destroy, id: @wizytum
    end

    assert_redirected_to wizyta_path
  end
end
