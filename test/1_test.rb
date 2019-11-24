require 'test/unit'
require './1/1_0'
require './1/1_1'
require './1/1_2'

class Test1 < Test::Unit::TestCase
  def test_1_0
    assert_equal 'desserts', First.str_reverse
  end

  def test_1_1
    assert_equal 'タクシー', First.odd_index_str
  end

  def test_1_2
    assert_equal 'パタトクカシーー', First.composition_str
  end
end
