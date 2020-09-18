require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get root' do
    get root_path
    assert_response :success
    assert_select 'title', full_title('About')
  end

  test 'should get help' do
    get about_path
    assert_response :success
    assert_select 'title', full_title('About')
  end
end
