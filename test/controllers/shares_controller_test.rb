require 'test_helper'

class SharesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @share = shares(:one)
  end

  test 'should show share' do
    get share_path(@share.uid)
    assert_response :success
    assert_select 'title', full_title(@share.uid)
    assert_select 'iframe' if @share.valid_json?
  end

  test 'should get new' do
    get new_share_path
    assert_response :success
    assert_select 'title', full_title('New Share')
  end
end
