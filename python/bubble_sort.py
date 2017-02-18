def bubble_sort(ary):
  rng = range(len(ary) -1, -1, -1)
  for val in ary:
    for i in rng:
      if i - 1 != -1:
        if ary[i] < ary[i - 1]:
          ary[i], ary[i - 1] = ary[i - 1], ary[i]
        else:
          continue
      # print(ary) Check the process
  return ary
