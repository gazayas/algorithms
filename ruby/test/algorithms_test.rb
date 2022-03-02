require 'minitest/autorun'
require_relative './test_helper'
require_relative '../selection_sort'
require_relative '../insertion_sort'
require_relative '../bubble_sort'

class TestAlgorithms < MiniTest::Unit::TestCase
  UNSORTED_ARRAYS = [
    [2, 3, 1, 7, 10, 5, 4, 9, 8, 6],
    [8, 10, 7, 6, 5, 4, 2, 3, 9, 1],
    [6, 9, 2, 7, 4, 10, 1, 3, 8, 5],
    [8, 3, 2, 7, 5, 1, 9, 4, 6, 10],
    [7, 5, 9, 1, 3, 10, 2, 6, 8, 4],
    [3, 6, 1, 4, 7, 8, 5, 10, 2, 9],
    [9, 10, 8, 1, 6, 3, 5, 4, 7, 2],
    [10, 2, 6, 9, 4, 1, 7, 3, 5, 8],
    [4, 10, 9, 7, 5, 6, 3, 1, 2, 8],
    [6, 9, 10, 5, 8, 3, 2, 7, 1, 4]
  ]

  SORTED_ARRAY = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  def setup
    @unsorted_array = UNSORTED_ARRAYS[rand(UNSORTED_ARRAYS.length)]
  end

  def test_selection_sort
    assert_equal selection_sort(@unsorted_array), SORTED_ARRAY
  end

  def test_insertion_sort
    assert_equal insertion_sort(@unsorted_array), SORTED_ARRAY
  end

  def test_bubble_sort
    assert_equal bubble_sort(@unsorted_array), SORTED_ARRAY
  end
end
