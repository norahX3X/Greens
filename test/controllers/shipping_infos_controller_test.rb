require 'test_helper'

class ShippingInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shipping_infos_index_url
    assert_response :success
  end

  test "should get new" do
    get shipping_infos_new_url
    assert_response :success
  end

  test "should get edit" do
    get shipping_infos_edit_url
    assert_response :success
  end

  test "should get delete" do
    get shipping_infos_delete_url
    assert_response :success
  end

end
