require 'minitest/autorun'
$: << File.join(File.dirname(__FILE__), "/../")
require 'selection_sort'
require 'insertion_sort'

MiniTest::Unit.autorun

class TestAlgorithms < MiniTest::Unit::TestCase

  def setup
    @ary = [2, 3, 1, 7, 10, 5, 4, 9, 8, 6]
    @ordered_ary = @ary.sort
  end

  def test_selection_sort
    new_ary = selection_sort @ary
    assert_equal new_ary, @ordered_ary
  end

  def test_insertion_sort
    new_ary = insertion_sort @ary
    assert_equal new_ary, @ordered_ary
  end

end
