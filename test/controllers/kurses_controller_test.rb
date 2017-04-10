require 'test_helper'

class KursesControllerTest < ActionController::TestCase
  setup do
    @kurse = kurses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kurses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kurse" do
    assert_difference('Kurse.count') do
      post :create, kurse: { gruppen_id: @kurse.gruppen_id, kursname: @kurse.kursname }
    end

    assert_redirected_to kurse_path(assigns(:kurse))
  end

  test "should show kurse" do
    get :show, id: @kurse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kurse
    assert_response :success
  end

  test "should update kurse" do
    patch :update, id: @kurse, kurse: { gruppen_id: @kurse.gruppen_id, kursname: @kurse.kursname }
    assert_redirected_to kurse_path(assigns(:kurse))
  end

  test "should destroy kurse" do
    assert_difference('Kurse.count', -1) do
      delete :destroy, id: @kurse
    end

    assert_redirected_to kurses_path
  end
end
