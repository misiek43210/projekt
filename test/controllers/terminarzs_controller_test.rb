require 'test_helper'

class TerminarzsControllerTest < ActionController::TestCase
  setup do
    @terminarz = terminarzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminarzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terminarz" do
    assert_difference('Terminarz.count') do
      post :create, terminarz: { ID_lekarza: @terminarz.ID_lekarza, ID_terminu: @terminarz.ID_terminu, wolne_terminy: @terminarz.wolne_terminy }
    end

    assert_redirected_to terminarz_path(assigns(:terminarz))
  end

  test "should show terminarz" do
    get :show, id: @terminarz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terminarz
    assert_response :success
  end

  test "should update terminarz" do
    patch :update, id: @terminarz, terminarz: { ID_lekarza: @terminarz.ID_lekarza, ID_terminu: @terminarz.ID_terminu, wolne_terminy: @terminarz.wolne_terminy }
    assert_redirected_to terminarz_path(assigns(:terminarz))
  end

  test "should destroy terminarz" do
    assert_difference('Terminarz.count', -1) do
      delete :destroy, id: @terminarz
    end

    assert_redirected_to terminarzs_path
  end
end
