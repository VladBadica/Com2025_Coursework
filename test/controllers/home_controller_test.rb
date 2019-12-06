require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'My Website'
    assert_select 'h1', 'Judo C&A Management'
    assert_select 'p', 'Welcome! Here you can manage the competitions and athletes for Judo'
  end

  test "should get contact" do
    get home_contact_url
    assert_response :success
  end

end
