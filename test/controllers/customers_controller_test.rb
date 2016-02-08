require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, addr4: @customer.addr4, city: @customer.city, contactno: @customer.contactno, country: @customer.country, email: @customer.email, name: @customer.name, postcode: @customer.postcode, state: @customer.state }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { addr1: @customer.addr1, addr2: @customer.addr2, addr3: @customer.addr3, addr4: @customer.addr4, city: @customer.city, contactno: @customer.contactno, country: @customer.country, email: @customer.email, name: @customer.name, postcode: @customer.postcode, state: @customer.state }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
