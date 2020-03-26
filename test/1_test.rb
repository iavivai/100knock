require 'test/unit'
require './first.rb'

class Test1 < Test::Unit::TestCase
  def test_1_0
    assert_equal 'desserts', First.zero
  end

  def test_1_1
    assert_equal 'タクシー', First.first
  end

  def test_1_2
    assert_equal 'パタトクカシーー', First.second
  end

  def test_1_3
    assert_equal [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5, 8, 9, 7, 9], First.third
  end

  def test_1_4
    ans = {
      'H' => 1, 'He' => 2, 'Li' => 3, 'Be' => 4, 'B' => 5,
      'C' => 6, 'N' => 7, 'O' => 8, 'F' => 9, 'Ne' => 10,
      'Na' => 11, 'Mi' => 12, 'Al' => 13, 'Si' => 14, 'P' => 15,
      'S' => 16, 'Cl' => 17, 'Ar' => 18, 'K' => 19, 'Ca' => 20,
    }

    assert_equal ans, First.four
  end

  def test_1_5
    assert_equal ['Iam', 'aman', 'anNLPer'], First.five('I am an NLPer', type: :word)
    assert_equal ['I ', ' a', 'am', 'm ', ' a', 'an', 'n ', ' N', 'NL', 'LP', 'Pe', 'er'],
                 First.five('I am an NLPer', type: :char)
  end

  def test_1_6
    x = First.six('paraparaparadise', type: :char)
    y = First.six('paragraph', type: :char)

    assert_equal ['pa', 'ar', 'ra', 'ap', 'ad', 'di', 'is', 'se', 'ag', 'gr', 'ph'], x | y
    assert_equal ['pa', 'ar', 'ra', 'ap'], x & y
    assert_equal ['ad', 'di', 'is', 'se'], x - y
  end

  def test_1_7
    assert_equal '12時の気温は22.4', First.seven(12, '気温', 22.4)
  end

  def test_1_8
    assert_equal 'Enkzgsb', First.eight('Empathy')
    assert_equal 'VrigfzoBlc', First.eight('VirtualBox')
    assert_equal 'rmhgzmxv nvgslw', First.eight('instance method')
  end

  def test_1_9
  end
end
