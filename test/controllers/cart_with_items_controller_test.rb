require 'test_helper'

class CartWithItemsControllerTest < ActionController::TestCase
  setup do
    @cart_with_item = cart_with_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cart_with_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cart_with_item" do
    assert_difference('CartWithItem.count') do
      post :create, cart_with_item: { cart_id: @cart_with_item.cart_id, quantity: @cart_with_item.quantity, user_id: @cart_with_item.user_id }
    end

    assert_redirected_to cart_with_item_path(assigns(:cart_with_item))
  end

  test "should show cart_with_item" do
    get :show, id: @cart_with_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cart_with_item
    assert_response :success
  end

  test "should update cart_with_item" do
    patch :update, id: @cart_with_item, cart_with_item: { cart_id: @cart_with_item.cart_id, quantity: @cart_with_item.quantity, user_id: @cart_with_item.user_id }
    assert_redirected_to cart_with_item_path(assigns(:cart_with_item))
  end

  test "should destroy cart_with_item" do
    assert_difference('CartWithItem.count', -1) do
      delete :destroy, id: @cart_with_item
    end

    assert_redirected_to cart_with_items_path
  end
end
