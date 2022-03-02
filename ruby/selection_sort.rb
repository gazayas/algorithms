# 選択ソート

# 次の記事を参照してください：
# http://qiita.com/gazayas/items/55d60798e449c5e04a24
def selection_sort ary
  0.upto(ary.length - 1).each do |x|
    min_num = ary[x]
    min_pos = x
    range = (( x + 1 )...ary.length)
    range.each do |y|
      if min_num > ary[y]
        min_num = ary[y]
        min_pos = y
      end
    end
    ary[x], ary[min_pos] = min_num, ary[x]
  end
  ary
end
