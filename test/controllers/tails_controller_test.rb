require 'test_helper'

class TailsControllerTest < ActionController::TestCase
  setup do
    @tail = tails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tail" do
    assert_difference('Tail.count') do
      post :create, tail: { content: @tail.content, teller: @tail.teller, title: @tail.title }
    end

    assert_redirected_to tail_path(assigns(:tail))
  end

  test "should show tail" do
    get :show, id: @tail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tail
    assert_response :success
  end

  test "should update tail" do
    patch :update, id: @tail, tail: { content: @tail.content, teller: @tail.teller, title: @tail.title }
    assert_redirected_to tail_path(assigns(:tail))
  end

  test "should destroy tail" do
    assert_difference('Tail.count', -1) do
      delete :destroy, id: @tail
    end

    assert_redirected_to tails_path
  end
end
