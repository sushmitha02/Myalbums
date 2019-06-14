require 'test_helper'

class PictureUploadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @picture_upload = picture_uploads(:one)
  end

  test "should get index" do
    get picture_uploads_url
    assert_response :success
  end

  test "should get new" do
    get new_picture_upload_url
    assert_response :success
  end

  test "should create picture_upload" do
    assert_difference('PictureUpload.count') do
      post picture_uploads_url, params: { picture_upload: { description: @picture_upload.description, title: @picture_upload.title } }
    end

    assert_redirected_to picture_upload_url(PictureUpload.last)
  end

  test "should show picture_upload" do
    get picture_upload_url(@picture_upload)
    assert_response :success
  end

  test "should get edit" do
    get edit_picture_upload_url(@picture_upload)
    assert_response :success
  end

  test "should update picture_upload" do
    patch picture_upload_url(@picture_upload), params: { picture_upload: { description: @picture_upload.description, title: @picture_upload.title } }
    assert_redirected_to picture_upload_url(@picture_upload)
  end

  test "should destroy picture_upload" do
    assert_difference('PictureUpload.count', -1) do
      delete picture_upload_url(@picture_upload)
    end

    assert_redirected_to picture_uploads_url
  end
end
