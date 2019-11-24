require 'test/unit'
require './1/1_0'

class Test1 < Test::Unit::TestCase
  def test_1_0
    assert_equal 'desserts', First.str_reverse
  end
end
