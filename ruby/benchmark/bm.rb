require 'benchmark'
require '../selection_sort'
require '../insertion_sort'
require '../bubble_sort' 

# 速さは配列の順番にもよるかもしれないから、配列をshuffleしてから渡すようにしたい
ary = [2, 3, 1, 7, 10, 5, 4, 9, 8, 6]

amount = 5000

Benchmark.bm do |r|
  r.report "selection_sort 選択ソート" do
    amount.times do
      selection_sort(ary)
    end
  end

  r.report "insertion_sort 挿入ソート" do
    amount.times do
      insertion_sort(ary)
    end
  end

  r.report "bubble_sort バブルソート" do
    amount.times do
      bubble_sort(ary)
    end
  end
end
