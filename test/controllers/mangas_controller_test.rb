require 'test_helper'

class MangasControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @manga = mangas(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get mangas_url
    assert_response :success
  end

  test "should get new" do
    get new_manga_url
    assert_response :success
  end

  test "should create manga" do
    assert_difference('Manga.count') do
      post mangas_url, params: { manga: { LatestChapter: @manga.LatestChapter, Status: @manga.Status, Published: @manga.Published, Genre: @manga.Genre,  title: @manga.title + " create" } }
    end

    assert_redirected_to manga_url(Manga.last)
  end

  test "should show manga" do
    get manga_url(@manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_manga_url(@manga)
    assert_response :success
  end

  test "should update manga" do
    patch manga_url(@manga), params: { manga: { title: @manga.title, LatestChapter: @manga.LatestChapter, Status: @manga.Status, Published: @manga.Published, Genre: @manga.Genre } }
    assert_redirected_to manga_url(@manga)
  end

  test "should destroy manga" do
    assert_difference('Manga.count', -1) do
      delete manga_url(@manga)
    end

    assert_redirected_to mangas_url
  end
end
