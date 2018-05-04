require "application_system_test_case"

class GommisTest < ApplicationSystemTestCase
  setup do
    @gommi = gommis(:one)
  end

  test "visiting the index" do
    visit gommis_url
    assert_selector "h1", text: "Gommis"
  end

  test "creating a Gommi" do
    visit gommis_url
    click_on "New Gommi"

    fill_in "Explanation", with: @gommi.explanation
    fill_in "Kind", with: @gommi.kind
    fill_in "Title", with: @gommi.title
    click_on "Create Gommi"

    assert_text "Gommi was successfully created"
    click_on "Back"
  end

  test "updating a Gommi" do
    visit gommis_url
    click_on "Edit", match: :first

    fill_in "Explanation", with: @gommi.explanation
    fill_in "Kind", with: @gommi.kind
    fill_in "Title", with: @gommi.title
    click_on "Update Gommi"

    assert_text "Gommi was successfully updated"
    click_on "Back"
  end

  test "destroying a Gommi" do
    visit gommis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gommi was successfully destroyed"
  end
end
