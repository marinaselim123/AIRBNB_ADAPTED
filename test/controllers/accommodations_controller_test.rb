require 'test_helper'

class AccommodationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get accommodations_index_url
    assert_response :success
  end

  test "should get create" do
    get accommodations_create_url
    assert_response :success
  end

  test "should get new" do
    get accommodations_new_url
    assert_response :success
  end

  test "should get show" do
    get accommodations_show_url
    assert_response :success
  end

  test "should get my_reservation" do
    get accommodations_my_reservation_url
    assert_response :success
  end

  test "should get accepted" do
    get accommodations_accepted_url
    assert_response :success
  end

  test "should get declined" do
    get accommodations_declined_url
    assert_response :success
  end

end
