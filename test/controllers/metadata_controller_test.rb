require "test_helper"

class MetadataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metadatum = metadata(:one)
    @metadata_type = metadata_types(:one)
  end

  test "should get new" do
    get new_metadata_type_metadatum_url(@metadata_type)
    assert_response :success
  end

  test "should create metadatum" do
    assert_difference("Metadatum.count") do
      post metadata_type_metadata_url(@metadata_type), params: { metadatum: { metadata_type_id: @metadatum.metadata_type_id, name: @metadatum.name } }
    end

    assert_redirected_to metadata_type_url(@metadata_type)
  end

  test "should get edit" do
    get edit_metadata_type_metadatum_url(@metadatum.metadata_type_id, @metadatum)
    assert_response :success
  end

  test "should update metadatum" do
    patch metadata_type_metadatum_url(@metadatum.metadata_type_id, @metadatum), params: { metadatum: { metadata_type_id: @metadatum.metadata_type_id, name: @metadatum.name } }
    assert_redirected_to metadata_type_url(@metadatum.metadata_type_id)
  end

  test "should destroy metadatum" do
    redirect_metadata_type_id = @metadatum.metadata_type_id
    assert_difference("Metadatum.count", -1) do
      delete metadata_type_metadatum_url(@metadatum.metadata_type_id, @metadatum)
    end

    assert_redirected_to metadata_type_url(redirect_metadata_type_id)
  end
end
