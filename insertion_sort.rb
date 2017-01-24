# 挿入ソート
# 速さ：遅い
# 単純

# wikiに記載してある情報
# （https://ja.wikipedia.org/wiki/%E6%8C%BF%E5%85%A5%E3%82%BD%E3%83%BC%E3%83%88）：
# 整列してある配列に追加要素を適切な場所に挿入すること。
# 平均計算時間・最悪計算時間がともにO(n2)と遅いが、
# アルゴリズムが単純で実装が容易なため、しばしば用いられる。
# 安定な内部ソート。

def insertion_sort ary  
  ary.each do |value|
    ary.index(value).downto(0) do |n|
      if value == ary[n]
        next
      elsif value > ary[n]
        break
      else # value < ary[n]
        ary[n + 1] = ary[n]
        ary[n] = value
        if value < ary[n - 1]
          next
        else
          break
        end
      end
    end
  end
  ary
end
