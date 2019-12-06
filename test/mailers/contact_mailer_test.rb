require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
 
  test "should return contact email" do
    mail = ContactMailer.contact_email("vlad@me.com", 
    "Vlad Badica", "1234567890", @message = "Hello")

    assert_equal ['info@myjudo.com'], mail.to
    assert_equal ['info@myjudo.com'], mail.from
  end

end
