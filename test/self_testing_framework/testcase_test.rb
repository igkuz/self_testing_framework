require "test_helper"

class SelfTestingFramework::TestCaseTest < SelfTestingFramework::TestCase

  def test_assert_true
    assert true
  end

  def test_assert_false
    assert false
  end

end
