require "test_helper"

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @organization = organizations(:one)
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    sign_in users(:one)
    assert_difference("Organization.count") do
      post organizations_url, params: { organization: { email: @organization.email, name: @organization.name, website: @organization.website } }
    end

    assert_redirected_to copyright_index_path
  end

  test "should not permit user param but still create organization" do
    sign_in users(:one)
    assert_difference("Organization.count") do
      post organizations_url, params: { organization: { email: @organization.email, name: users(:two), user: @organization.user, website: @organization.website } }
    end
    
    assert_equal users(:one), Organization.last.user
    assert_redirected_to copyright_index_path
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { email: @organization.email, name: @organization.name, website: @organization.website } }
    assert_response :found
    assert_redirected_to copyright_index_path
  end

  test "should not permit user param but still update organization" do
    original_user_id = @organization.user_id
    patch organization_url(@organization), params: { organization: { email: @organization.email, name: @organization.name, user_id: 500, website: @organization.website } }
    @organization.reload
    assert_equal original_user_id, @organization.user_id
    assert_redirected_to copyright_index_path
  end

  # test "should destroy organization" do
  #   assert_difference("Organization.count", -1) do
  #     delete organization_url(@organization)
  #   end

  #   assert_redirected_to copyright_index_path
  # end
end
