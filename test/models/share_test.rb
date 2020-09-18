require 'test_helper'

class ShareTest < ActiveSupport::TestCase
  def setup
    @share = shares(:one)
  end

  test 'should be valid' do
    assert @share.valid?
  end

  test 'video_code should be present' do
    assert @share.video_code = '     '
    assert_not @share.valid?
  end

  test 'uid should be present' do
    assert @share.uid.present?
  end
end
