require 'test_helper'

class ShareTest < ActiveSupport::TestCase
  def setup
    @share = shares(:one)
  end

  test 'should be valid' do
    assert @share.valid?
  end

  test 'video_code should be present' do
    @share.video_code = '     '
    assert_not @share.valid?
  end

  test 'identifier should be present' do
    @share.identifier = '     '
    assert_not @share.valid?
  end

  test 'identifier should be unique' do
    duplicate_share = @share.dup
    @share.save
    assert_not duplicate_share.valid?
  end

  test 'identifier should be 8 characters' do
    @share.identifier = 'a' * 9
    assert_not @share.valid?
    @share.identifier = 'a' * 7
    assert_not @share.valid?
  end
end
