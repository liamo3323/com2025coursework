require "application_system_test_case"

class MangaListsTest < ApplicationSystemTestCase
  setup do
    @manga_list = manga_lists(:one)
  end

  test "visiting the index" do
    visit manga_lists_url
    assert_selector "h1", text: "Manga Lists"
  end

  test "creating a Manga list" do
    visit manga_lists_url
    click_on "New Manga List"

    fill_in "Name", with: @manga_list.name
    click_on "Create Manga list"

    assert_text "Manga list was successfully created"
    click_on "Back"
  end

  test "updating a Manga list" do
    visit manga_lists_url
    click_on "Edit", match: :first

    fill_in "Name", with: @manga_list.name
    click_on "Update Manga list"

    assert_text "Manga list was successfully updated"
    click_on "Back"
  end

  test "destroying a Manga list" do
    visit manga_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manga list was successfully destroyed"
  end
end
