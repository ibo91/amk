require 'test_helper'

class BewertungsControllerTest < ActionController::TestCase
  setup do
    @bewertung = bewertungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bewertungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bewertung" do
    assert_difference('Bewertung.count') do
      post :create, bewertung: { bewertungswert: @bewertung.bewertungswert, karteikarten_id: @bewertung.karteikarten_id, user_id: @bewertung.user_id }
    end

    assert_redirected_to bewertung_path(assigns(:bewertung))
  end

  test "should show bewertung" do
    get :show, id: @bewertung
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bewertung
    assert_response :success
  end

  test "should update bewertung" do
    patch :update, id: @bewertung, bewertung: { bewertungswert: @bewertung.bewertungswert, karteikarten_id: @bewertung.karteikarten_id, user_id: @bewertung.user_id }
    assert_redirected_to bewertung_path(assigns(:bewertung))
  end

  test "should destroy bewertung" do
    assert_difference('Bewertung.count', -1) do
      delete :destroy, id: @bewertung
    end

    assert_redirected_to bewertungs_path
  end
end
