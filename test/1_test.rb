require 'test/unit'
require './1/1_0'
require './1/1_1'
require './1/1_2'
require './1/1_3'

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

  def test_1_3
    assert_equal [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9], First.word_length('Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.')
  end
end
