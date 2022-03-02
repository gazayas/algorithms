require 'benchmark'
require_relative '../../selection_sort'
require_relative '../../insertion_sort'
require_relative '../../bubble_sort'

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

amount = 5000

Benchmark.bm do |r|
  r.report "selection_sort 選択ソート" do
    amount.times do
      selection_sort(UNSORTED_ARRAYS[rand(UNSORTED_ARRAYS.length)])
    end
  end

  r.report "insertion_sort 挿入ソート" do
    amount.times do
      insertion_sort(UNSORTED_ARRAYS[rand(UNSORTED_ARRAYS.length)])
    end
  end

  r.report "bubble_sort バブルソート" do
    amount.times do
      bubble_sort(UNSORTED_ARRAYS[rand(UNSORTED_ARRAYS.length)])
    end
  end
end
