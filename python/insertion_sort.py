# unfinished

def insertion_sort(ary):
  for val in ary:
    rng = range(len(ary) -1 , -1, -1) # count backwards
    for i in rng:
      if val == ary[i]:
        continue
      elif val > ary[i]:
        break
      else:
        #ary[i + 1] = ary[i]
        #ary[i] = val
        if val < ary[i - 1]:
          continue
        else:
          break

  print ary


insertion_sort([2, 1, 3, 7, 5, 6, 4])
