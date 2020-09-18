require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test 'full title helper' do
    assert_equal full_title, 'Vimeo Temp'
    assert_equal full_title('Test'), 'Test | Vimeo Temp'
  end
end
