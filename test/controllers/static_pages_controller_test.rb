require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get root_url
    assert_response :success
    assert_select 'title', full_title('About')
  end

  test 'should get help' do
    get static_pages_about_url
    assert_response :success
    assert_select 'title', full_title('About')
  end
end
