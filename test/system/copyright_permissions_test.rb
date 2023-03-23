require "application_system_test_case"

class CopyrightPermissionsTest < ApplicationSystemTestCase
  setup do
    @copyright_permission = copyright_permissions(:one)
  end

  test "visiting the index" do
    visit copyright_permissions_url
    assert_selector "h1", text: "Copyright permissions"
  end

  test "should create copyright permission" do
    visit copyright_permissions_url
    click_on "New copyright permission"

    fill_in "Date contacted", with: @copyright_permission.date_contacted
    fill_in "Date of response", with: @copyright_permission.date_of_response
    fill_in "Description", with: @copyright_permission.description
    check "Granted" if @copyright_permission.granted
    fill_in "Organization", with: @copyright_permission.organization_id
    fill_in "User", with: @copyright_permission.user_id
    click_on "Create Copyright permission"

    assert_text "Copyright permission was successfully created"
    click_on "Back"
  end

  test "should update Copyright permission" do
    visit copyright_permission_url(@copyright_permission)
    click_on "Edit this copyright permission", match: :first

    fill_in "Date contacted", with: @copyright_permission.date_contacted
    fill_in "Date of response", with: @copyright_permission.date_of_response
    fill_in "Description", with: @copyright_permission.description
    check "Granted" if @copyright_permission.granted
    fill_in "Organization", with: @copyright_permission.organization_id
    fill_in "User", with: @copyright_permission.user_id
    click_on "Update Copyright permission"

    assert_text "Copyright permission was successfully updated"
    click_on "Back"
  end

  test "should destroy Copyright permission" do
    visit copyright_permission_url(@copyright_permission)
    click_on "Destroy this copyright permission", match: :first

    assert_text "Copyright permission was successfully destroyed"
  end
end
