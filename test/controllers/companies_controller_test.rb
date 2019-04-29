require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get company_create_url
    assert_response :success
  end

  test "should get read" do
    get company_read_url
    assert_response :success
  end

  test "should get update" do
    get company_update_url
    assert_response :success
  end

  test "should get destroy" do
    get company_destroy_url
    assert_response :success
  end

end
