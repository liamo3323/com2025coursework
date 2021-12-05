require 'test_helper'

class MangaListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manga_list = manga_lists(:one)
  end

  test "should get index" do
    get manga_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_manga_list_url
    assert_response :success
  end

  test "should create manga_list" do
    assert_difference('Manga_List.count') do
      post :create, manga_list: { name: @manga_list.name  + " create" }
    end

    assert_redirected_to manga_list_url(MangaList.last)
  end

  test "should show manga_list" do
    get manga_list_url(@manga_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_manga_list_url(@manga_list)
    assert_response :success
  end

  test "should update manga_list" do
    patch manga_list_url(@manga_list), params: { manga_list: { name: @manga_list.name } }
    assert_redirected_to manga_list_url(@manga_list)
  end

  test "should destroy manga_list" do
    assert_difference('MangaList.count', -1) do
      delete manga_list_url(@manga_list)
    end

    assert_redirected_to manga_lists_url
  end
end
