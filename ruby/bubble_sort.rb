# バブルソート
# 速さ：遅い

def bubble_sort ary
  ary.length.times do |n|
    rng = Range.new(n, ary.length - 1)
    rng.last.downto(rng.first) do |i|
      if ary[i] < ary[i - 1] && i - 1 != -1
        ary[i], ary[i - 1] = ary[i - 1], ary[i]
      else
        next
      end
      # p ary 動作確認 Check the process
    end
  end
  ary
end
