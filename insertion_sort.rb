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
