require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase

  test "should return contact email" do
    
    mail = ContactMailer.contact_email("matthew@email.com", "Matthew Casey", "1234567890", @message = "Hello")
    
    aassert_equal ['info@samsoc.com'], mail.to
    assert_equal ['info@samsoc.com'], mail.from
  end
end