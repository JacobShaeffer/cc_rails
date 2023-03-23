require "test_helper"

class CopyrightPermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @copyright_permission = copyright_permissions(:one)
  end

  test "should get index" do
    get copyright_permissions_url
    assert_response :success
  end

  test "should get new" do
    get new_copyright_permission_url
    assert_response :success
  end

  test "should create copyright_permission" do
    assert_difference("CopyrightPermission.count") do
      post copyright_permissions_url, params: { copyright_permission: { date_contacted: @copyright_permission.date_contacted, date_of_response: @copyright_permission.date_of_response, description: @copyright_permission.description, granted: @copyright_permission.granted, organization_id: @copyright_permission.organization_id, user_id: @copyright_permission.user_id } }
    end

    assert_redirected_to copyright_permission_url(CopyrightPermission.last)
  end

  test "should show copyright_permission" do
    get copyright_permission_url(@copyright_permission)
    assert_response :success
  end

  test "should get edit" do
    get edit_copyright_permission_url(@copyright_permission)
    assert_response :success
  end

  test "should update copyright_permission" do
    patch copyright_permission_url(@copyright_permission), params: { copyright_permission: { date_contacted: @copyright_permission.date_contacted, date_of_response: @copyright_permission.date_of_response, description: @copyright_permission.description, granted: @copyright_permission.granted, organization_id: @copyright_permission.organization_id, user_id: @copyright_permission.user_id } }
    assert_redirected_to copyright_permission_url(@copyright_permission)
  end

  test "should destroy copyright_permission" do
    assert_difference("CopyrightPermission.count", -1) do
      delete copyright_permission_url(@copyright_permission)
    end

    assert_redirected_to copyright_permissions_url
  end
end
