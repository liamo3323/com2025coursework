require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Samsoc'
    assert_select 'h1', 'SAMsoc Manga Library'
    assert_select 'p', ' Surrey Anime and Manga Society was established in 2006, and since then we have blossomed into a wonderful community of avid anime and manga enjoyers. Our society is open to everyone, from complete beginners to seasoned pros.'
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Samsoc'
    assert_select 'h1', 'Contact Us Page'
    assert_select 'p', 'Fill in the following information to get in touch with us!'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
    {name: "Matthew", email: "matthew@me.com",
    telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end

end
