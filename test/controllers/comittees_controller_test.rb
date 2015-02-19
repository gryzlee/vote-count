require 'test_helper'

class ComitteesControllerTest < ActionController::TestCase
  setup do
    @comittee = comittees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comittees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comittee" do
    assert_difference('Comittee.count') do
      post :create, comittee: { name: @comittee.name }
    end

    assert_redirected_to comittee_path(assigns(:comittee))
  end

  test "should show comittee" do
    get :show, id: @comittee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comittee
    assert_response :success
  end

  test "should update comittee" do
    patch :update, id: @comittee, comittee: { name: @comittee.name }
    assert_redirected_to comittee_path(assigns(:comittee))
  end

  test "should destroy comittee" do
    assert_difference('Comittee.count', -1) do
      delete :destroy, id: @comittee
    end

    assert_redirected_to comittees_path
  end
end
