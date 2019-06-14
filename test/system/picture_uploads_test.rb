require "application_system_test_case"

class PictureUploadsTest < ApplicationSystemTestCase
  setup do
    @picture_upload = picture_uploads(:one)
  end

  test "visiting the index" do
    visit picture_uploads_url
    assert_selector "h1", text: "Picture Uploads"
  end

  test "creating a Picture upload" do
    visit picture_uploads_url
    click_on "New Picture Upload"

    fill_in "Description", with: @picture_upload.description
    fill_in "Title", with: @picture_upload.title
    click_on "Create Picture upload"

    assert_text "Picture upload was successfully created"
    click_on "Back"
  end

  test "updating a Picture upload" do
    visit picture_uploads_url
    click_on "Edit", match: :first

    fill_in "Description", with: @picture_upload.description
    fill_in "Title", with: @picture_upload.title
    click_on "Update Picture upload"

    assert_text "Picture upload was successfully updated"
    click_on "Back"
  end

  test "destroying a Picture upload" do
    visit picture_uploads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Picture upload was successfully destroyed"
  end
end
