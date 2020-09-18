require 'test_helper'

class SharesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @share = shares(:one)
  end

  test 'should show share' do
    get share_path(@share)
    assert_response :success
    assert_select 'title', full_title(@share.identifier)
  end
end
