require 'test_helper'

class SharesCreateTest < ActionDispatch::IntegrationTest
  test 'invalid share creation' do
    get new_share_path
    assert_no_difference 'Share.count' do
      post shares_path, params: { share: { video_code: '' } }
    end
    assert_template 'shares/new'
    assert_select 'div.notification.is-danger'
  end

  test 'valid share creation' do
    get new_share_path
    assert_difference 'Share.count', 1 do
      post shares_path, params: { share: { video_code: '350958068', duration: 12 } }
    end
    follow_redirect!
    assert_template 'shares/show'
    assert_not flash.empty?
    assert_select 'iframe'
  end
end
