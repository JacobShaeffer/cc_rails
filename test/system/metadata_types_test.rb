require "application_system_test_case"

class MetadataTypesTest < ApplicationSystemTestCase
  setup do
    @metadata_type = metadata_types(:one)
  end

  test "visiting the index" do
    visit metadata_types_url
    assert_selector "h1", text: "Metadata types"
  end

  test "should create metadata type" do
    visit metadata_types_url
    click_on "New metadata type"

    fill_in "Name", with: @metadata_type.name
    click_on "Create Metadata type"

    assert_text "Metadata type was successfully created"
    click_on "Back"
  end

  test "should update Metadata type" do
    visit metadata_type_url(@metadata_type)
    click_on "Edit this metadata type", match: :first

    fill_in "Name", with: @metadata_type.name
    click_on "Update Metadata type"

    assert_text "Metadata type was successfully updated"
    click_on "Back"
  end

  test "should destroy Metadata type" do
    visit metadata_type_url(@metadata_type)
    click_on "Destroy this metadata type", match: :first

    assert_text "Metadata type was successfully destroyed"
  end
end
