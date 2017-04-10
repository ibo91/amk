require 'test_helper'

class BeantwortetsControllerTest < ActionController::TestCase
  setup do
    @beantwortet = beantwortets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beantwortets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beantwortet" do
    assert_difference('Beantwortet.count') do
      post :create, beantwortet: { user_id: @beantwortet.user_id }
    end

    assert_redirected_to beantwortet_path(assigns(:beantwortet))
  end

  test "should show beantwortet" do
    get :show, id: @beantwortet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beantwortet
    assert_response :success
  end

  test "should update beantwortet" do
    patch :update, id: @beantwortet, beantwortet: { user_id: @beantwortet.user_id }
    assert_redirected_to beantwortet_path(assigns(:beantwortet))
  end

  test "should destroy beantwortet" do
    assert_difference('Beantwortet.count', -1) do
      delete :destroy, id: @beantwortet
    end

    assert_redirected_to beantwortets_path
  end
end
