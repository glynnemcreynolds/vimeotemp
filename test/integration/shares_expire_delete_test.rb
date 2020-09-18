require 'test_helper'

class SharesExpireDeleteTest < ActionDispatch::IntegrationTest
  def setup
    @share = shares(:one)
  end

  test 'should delete expired' do
    @share.created_at = 48.hours.ago
    @share.save
    assert_difference 'Share.count', -1 do
      get share_path(@share.uid)
    end
    assert_response :redirect
    follow_redirect!
    assert_not flash.empty?
    assert_select 'title', full_title('Expired')
  end
end
