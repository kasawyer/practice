# Given a square matrix, calculate the absolute difference between the sums of its diagonals.
#
# For example, the square matrix  is shown below:
#
# 1 2 3
# 4 5 6
# 9 8 9
# The left-to-right diagonal = . The right to left diagonal = . Their absolute difference is .
#
# Function description
#
# Complete the  function in the editor below. It must return an integer representing the absolute diagonal difference.
#
# diagonalDifference takes the following parameter:
#
# arr: an array of integers .
# Input Format
#
# The first line contains a single integer, , the number of rows and columns in the matrix .
# Each of the next  lines describes a row, , and consists of  space-separated integers .
#
# Constraints
#
# Output Format
#
# Print the absolute difference between the sums of the matrix's two diagonals as a single integer.
#
# Sample Input
#
# 3
# 11 2 4
# 4 5 6
# 10 8 -12
# Sample Output
#
# 15
# Explanation
#
# The primary diagonal is:
#
# 11
#    5
#      -12
# Sum across the primary diagonal: 11 + 5 - 12 = 4
#
# The secondary diagonal is:
#
#      4
#    5
# 10
# Sum across the secondary diagonal: 4 + 5 + 10 = 19
# Difference: |4 - 19| = 15
#
# Note: |x| is the absolute value of x

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the diagonalDifference function below.
def diagonalDifference(arr)
    n = arr.length
    sum1 = 0
    sum2 = 0
    arr.each_with_index do |row, i|
        sum1 += arr[i][i]
        sum2 += arr[(n-1)-i][i]
    end
    result = sum1 - sum2
    result.abs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
