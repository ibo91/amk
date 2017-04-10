require 'test_helper'

class GruppensControllerTest < ActionController::TestCase
  setup do
    @gruppen = gruppens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gruppens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gruppen" do
    assert_difference('Gruppen.count') do
      post :create, gruppen: { gruppenname: @gruppen.gruppenname }
    end

    assert_redirected_to gruppen_path(assigns(:gruppen))
  end

  test "should show gruppen" do
    get :show, id: @gruppen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gruppen
    assert_response :success
  end

  test "should update gruppen" do
    patch :update, id: @gruppen, gruppen: { gruppenname: @gruppen.gruppenname }
    assert_redirected_to gruppen_path(assigns(:gruppen))
  end

  test "should destroy gruppen" do
    assert_difference('Gruppen.count', -1) do
      delete :destroy, id: @gruppen
    end

    assert_redirected_to gruppens_path
  end
end
