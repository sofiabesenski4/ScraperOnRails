require "application_system_test_case"

class WebpagesTest < ApplicationSystemTestCase
  setup do
    @webpage = webpages(:one)
  end

  test "visiting the index" do
    visit webpages_url
    assert_selector "h1", text: "Webpages"
  end

  test "should create webpage" do
    visit webpages_url
    click_on "New webpage"

    fill_in "Raw html", with: @webpage.raw_html
    fill_in "Url", with: @webpage.url
    click_on "Create Webpage"

    assert_text "Webpage was successfully created"
    click_on "Back"
  end

  test "should update Webpage" do
    visit webpage_url(@webpage)
    click_on "Edit this webpage", match: :first

    fill_in "Raw html", with: @webpage.raw_html
    fill_in "Url", with: @webpage.url
    click_on "Update Webpage"

    assert_text "Webpage was successfully updated"
    click_on "Back"
  end

  test "should destroy Webpage" do
    visit webpage_url(@webpage)
    click_on "Destroy this webpage", match: :first

    assert_text "Webpage was successfully destroyed"
  end
end
