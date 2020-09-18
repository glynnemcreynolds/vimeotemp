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
    video_code = '1234567'
    assert_difference 'Share.count', 1 do
      post shares_path, params: { share: { video_code: video_code } }
    end
    follow_redirect!
    assert_template 'shares/show'
    assert_not flash.empty?
    assert_select 'p', video_code
  end
end
