require 'test_helper'

class FavoritensControllerTest < ActionController::TestCase
  setup do
    @favoriten = favoritens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favoritens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favoriten" do
    assert_difference('Favoriten.count') do
      post :create, favoriten: { karteikarten_id: @favoriten.karteikarten_id, user_id: @favoriten.user_id }
    end

    assert_redirected_to favoriten_path(assigns(:favoriten))
  end

  test "should show favoriten" do
    get :show, id: @favoriten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favoriten
    assert_response :success
  end

  test "should update favoriten" do
    patch :update, id: @favoriten, favoriten: { karteikarten_id: @favoriten.karteikarten_id, user_id: @favoriten.user_id }
    assert_redirected_to favoriten_path(assigns(:favoriten))
  end

  test "should destroy favoriten" do
    assert_difference('Favoriten.count', -1) do
      delete :destroy, id: @favoriten
    end

    assert_redirected_to favoritens_path
  end
end
