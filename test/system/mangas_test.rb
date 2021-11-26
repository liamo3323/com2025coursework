require "application_system_test_case"

class MangasTest < ApplicationSystemTestCase
  setup do
    @manga = mangas(:one)
  end

  test "visiting the index" do
    visit mangas_url
    assert_selector "h1", text: "Mangas"
  end

  test "creating a Manga" do
    visit mangas_url
    click_on "New Manga"

    fill_in "Availability", with: @manga.availability
    fill_in "Borrower", with: @manga.borrower
    fill_in "Owner", with: @manga.owner
    fill_in "Title", with: @manga.title
    fill_in "Value", with: @manga.value
    fill_in "Volumenum", with: @manga.volumeNum
    click_on "Create Manga"

    assert_text "Manga was successfully created"
    click_on "Back"
  end

  test "updating a Manga" do
    visit mangas_url
    click_on "Edit", match: :first

    fill_in "Availability", with: @manga.availability
    fill_in "Borrower", with: @manga.borrower
    fill_in "Owner", with: @manga.owner
    fill_in "Title", with: @manga.title
    fill_in "Value", with: @manga.value
    fill_in "Volumenum", with: @manga.volumeNum
    click_on "Update Manga"

    assert_text "Manga was successfully updated"
    click_on "Back"
  end

  test "destroying a Manga" do
    visit mangas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Manga was successfully destroyed"
  end
end
