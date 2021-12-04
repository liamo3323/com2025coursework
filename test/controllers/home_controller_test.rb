require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'SAMsoc Manga Database'
    assert_select 'h1', 'SAMsoc Manga Library'
    assert_select 'p', ' Surrey Anime and Manga Society was established in 2006, and since then we have blossomed into a wonderful community of avid anime and manga enjoyers. Our society is open to everyone, from complete beginners to seasoned pros.'
  
    assert_select 'h2', 'Regular Sessions'
    assert_select 'p', 'Every Wednesday at 6pm we meet at Lecture Theatre G to watch anime. At the start of term, we vote on which shows we would like to watch and throughout the semester we watch two short core shows and one long core. We also have a break in the middle of the session so we can grab food and play games together! Favourites from last year include Kahoot quizzes, ‘Just a Minute!’, controversial debates and drawing challenges. These games, whilst being very fun to play, also provide a good opportunity to bond with the other members, something we strongly encourage here at SAMsoc.'

    assert_select 'h2', 'Social Sessions'
    assert_select 'p', 'Although we are an anime and manga society, we are also so much more! At the weekends, we host a wide range of events, which include'

    assert_select 'li', 'Karaoke evenings'
    assert_select 'li', 'Games nights'
    assert_select 'li', 'Film seshes'
    assert_select 'li', 'Collaborations with other societies (e.g. Dodgeball, Japanese society, Korean society and the video games society- just to name a few!)'
    assert_select 'li', 'Bake sales'
    assert_select 'li', 'Charity concerts'
    assert_select 'li', 'Naruto running around campus (for charity)'
    assert_select 'li', 'Quiz nights'
    assert_select 'li', 'Collaborations with other university anime societies'
    assert_select 'li', 'Online social events'

    assert_select 'h3', 'We are excited to bring back our favourite events this year, as well as adding some new ones to the mix! Follow our social media pages to keep up to date with our events, and make sure to join our Discord (the link will become available after you sign up on the union website).   '
    
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Contact Us'
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
