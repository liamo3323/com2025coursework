require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
    @manga = mangas(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      # [temp] post reviews_url, params: { review: { manga_id: @review.manga_id, title: @review.title } }
      post :create, task: { manga_id: @manga, title: @review.title }
    end

    # [temp] assert_redirected_to review_url(Review.last)
    assert_redirected_to task_path(assigns(:review))
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    # [temp] patch review_url(@review), params: { review: { manga_id: @review.manga_id, title: @review.title } }
    # [temp] assert_redirected_to review_url(@review)
  
    patch :update, id: @review, review: { manga_id: @manga, title: @review.title }#
    assert_redirected_to task_path(assigns(:task))

  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
