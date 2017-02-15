def insertion_sort(ary):
  for val in ary:
    rng = range(ary.index(val), -1, -1)
    # print(rng) Check the contents of rng
    for i in rng:
      if val == ary[i]:
        continue
      elif val > ary[i]:
        break
      else:
        if i + 1 < len(ary):
          ary[i + 1], ary[i] = ary[i], val
          # print(ary) Check the process
          if i - 1 > 0:
            if val < ary[i - 1]:
              continue
            else:
              break
  return ary
