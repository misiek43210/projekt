require 'test_helper'

class WozytaControllerTest < ActionController::TestCase
  setup do
    @wozytum = wozyta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wozyta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wozytum" do
    assert_difference('Wozytum.count') do
      post :create, wozytum: { index_lekarza: @wozytum.index_lekarza, index_pacjenta: @wozytum.index_pacjenta, index_recejpcjonisty: @wozytum.index_recejpcjonisty, index_wizyty: @wozytum.index_wizyty, termin: @wozytum.termin }
    end

    assert_redirected_to wozytum_path(assigns(:wozytum))
  end

  test "should show wozytum" do
    get :show, id: @wozytum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wozytum
    assert_response :success
  end

  test "should update wozytum" do
    patch :update, id: @wozytum, wozytum: { index_lekarza: @wozytum.index_lekarza, index_pacjenta: @wozytum.index_pacjenta, index_recejpcjonisty: @wozytum.index_recejpcjonisty, index_wizyty: @wozytum.index_wizyty, termin: @wozytum.termin }
    assert_redirected_to wozytum_path(assigns(:wozytum))
  end

  test "should destroy wozytum" do
    assert_difference('Wozytum.count', -1) do
      delete :destroy, id: @wozytum
    end

    assert_redirected_to wozyta_path
  end
end
