# You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
#
# For example:
#
# Let's say you are given the array {1,2,3,4,3,2,1}:
# Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.
#
# Let's look at another one.
# You are given the array {1,100,50,-51,1,1}:
# Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.
#
# Note: Please remember that in most programming/scripting languages the index of an array starts at 0.
#
# Input:
#
# An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
#
# Output:
#
# The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.
#
# Note:
#
# If you are given an array with multiple answers, return the lowest correct index.

def find_even_index(arr)
  n = arr.length
  arr.each_with_index do |value, index|
    if index == 0
      left_sum = 0
      right_sum = arr[(index + 1)..n].inject(0, &:+)
    else
      left_sum = arr[0..(index -1)].inject(0, &:+)
      right_sum = arr[(index + 1)..n].inject(0, &:+)
    end
    if left_sum == right_sum
      return index
    end
  end
  return -1
end
