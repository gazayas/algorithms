from insertion_sort import insertion_sort
from bubble_sort import bubble_sort

ary        = [2, 1, 3, 7, 5, 6, 4]
sorted_ary = [1, 2, 3, 4, 5, 6, 7]

def test_insertion_sort():
  assert insertion_sort(ary) == sorted_ary

def test_bubble_sort():
  assert bubble_sort(ary) == sorted_ary
