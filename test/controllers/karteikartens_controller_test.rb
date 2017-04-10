require 'test_helper'

class KarteikartensControllerTest < ActionController::TestCase
  setup do
    @karteikarten = karteikartens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karteikartens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karteikarten" do
    assert_difference('Karteikarten.count') do
      post :create, karteikarten: { aufrufe: @karteikarten.aufrufe, kurse_id: @karteikarten.kurse_id, rueckseite: @karteikarten.rueckseite, titel: @karteikarten.titel, user_id: @karteikarten.user_id, vorderseite: @karteikarten.vorderseite }
    end

    assert_redirected_to karteikarten_path(assigns(:karteikarten))
  end

  test "should show karteikarten" do
    get :show, id: @karteikarten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karteikarten
    assert_response :success
  end

  test "should update karteikarten" do
    patch :update, id: @karteikarten, karteikarten: { aufrufe: @karteikarten.aufrufe, kurse_id: @karteikarten.kurse_id, rueckseite: @karteikarten.rueckseite, titel: @karteikarten.titel, user_id: @karteikarten.user_id, vorderseite: @karteikarten.vorderseite }
    assert_redirected_to karteikarten_path(assigns(:karteikarten))
  end

  test "should destroy karteikarten" do
    assert_difference('Karteikarten.count', -1) do
      delete :destroy, id: @karteikarten
    end

    assert_redirected_to karteikartens_path
  end
end
