# Starting with a 1-indexed array of zeros and a list of operations, for each operation add a value to each of the array element between two given indices, inclusive. Once all operations have been performed, return the maximum value in your array.
#
# For example, the length of your array of zeros . Your list of queries is as follows:
#
#     a b k
#     1 5 3
#     4 8 7
#     6 9 1
# Add the values of  between the indices  and  inclusive:
#
# index->	 1 2 3  4  5 6 7 8 9 10
# 	[0,0,0, 0, 0,0,0,0,0, 0]
# 	[3,3,3, 3, 3,0,0,0,0, 0]
# 	[3,3,3,10,10,7,7,7,0, 0]
# 	[3,3,3,10,10,8,8,8,1, 0]
# The largest value is  after all operations are performed.
#
# Function Description
#
# Complete the function arrayManipulation in the editor below. It must return an integer, the maximum value in the resulting array.
#
# arrayManipulation has the following parameters:
#
# n - the number of elements in your array
# queries - a two dimensional array of queries where each queries[i] contains three integers, a, b, and k.
# Input Format
#
# The first line contains two space-separated integers  and , the size of the array and the number of operations.
# Each of the next  lines contains three space-separated integers ,  and , the left index, right index and summand.
#
# Constraints
#
# Output Format
#
# Return the integer maximum value in the finished array.
#
# Sample Input
#
# 5 3
# 1 2 100
# 2 5 100
# 3 4 100
# Sample Output
#
# 200
# Explanation
#
# After the first update list will be 100 100 0 0 0.
# After the second update list will be 100 200 100 100 100.
# After the third update list will be 100 200 200 200 100.
# The required answer will be .

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the arrayManipulation function below.
def arrayManipulation(n, queries)

    arr = Array.new(n + 1, 0)

    queries.each do |query|
        # cycle through and get the inputs
        start = query[0]
        finish = query[1]
        value = query[2]
        # increment value at start of sequence
        arr[start - 1] += value
        # decrement value at first position after sequence
        arr[finish] -= value
    end

    tmp = 0
    max = 0

    arr.each do |value|
        # step through summing array
        tmp += value
        # capture the max value of tmp
        max = tmp if max < tmp
    end

    result = max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

queries = Array.new(m)

m.times do |i|
    queries[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = arrayManipulation n, queries

fptr.write result
fptr.write "\n"

fptr.close()
