require 'test_helper'

class LivresControllerTest < ActionController::TestCase
  setup do
    @livre = livres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livre" do
    assert_difference('Livre.count') do
      post :create, livre: { auteur: @livre.auteur, titre: @livre.titre, user_id: @livre.user_id }
    end

    assert_redirected_to livre_path(assigns(:livre))
  end

  test "should show livre" do
    get :show, id: @livre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livre
    assert_response :success
  end

  test "should update livre" do
    patch :update, id: @livre, livre: { auteur: @livre.auteur, titre: @livre.titre, user_id: @livre.user_id }
    assert_redirected_to livre_path(assigns(:livre))
  end

  test "should destroy livre" do
    assert_difference('Livre.count', -1) do
      delete :destroy, id: @livre
    end

    assert_redirected_to livres_path
  end
end