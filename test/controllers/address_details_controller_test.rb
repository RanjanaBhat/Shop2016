require 'test_helper'

class AddressDetailsControllerTest < ActionController::TestCase
  setup do
    @address_detail = address_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_detail" do
    assert_difference('AddressDetail.count') do
      post :create, address_detail: { city: @address_detail.city, country: @address_detail.country, line1: @address_detail.line1, line2: @address_detail.line2, postcode: @address_detail.postcode, state: @address_detail.state }
    end

    assert_redirected_to address_detail_path(assigns(:address_detail))
  end

  test "should show address_detail" do
    get :show, id: @address_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address_detail
    assert_response :success
  end

  test "should update address_detail" do
    patch :update, id: @address_detail, address_detail: { city: @address_detail.city, country: @address_detail.country, line1: @address_detail.line1, line2: @address_detail.line2, postcode: @address_detail.postcode, state: @address_detail.state }
    assert_redirected_to address_detail_path(assigns(:address_detail))
  end

  test "should destroy address_detail" do
    assert_difference('AddressDetail.count', -1) do
      delete :destroy, id: @address_detail
    end

    assert_redirected_to address_details_path
  end
end
