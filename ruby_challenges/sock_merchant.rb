# John works at a clothing store. He has a large pile of socks that he must pair by color for sale. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
#
# For example, there are  socks with colors . There is one pair of color  and one of color . There are three odd socks left, one of each color. The number of pairs is .
#
# Function Description
#
# Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.
#
# sockMerchant has the following parameter(s):
#
# n: the number of socks in the pile
# ar: the colors of each sock
# Input Format
#
# The first line contains an integer , the number of socks represented in .
# The second line contains  space-separated integers describing the colors  of the socks in the pile.
#
# Constraints
#
#  where
# Output Format
#
# Print the total number of matching pairs of socks that John can sell.
#
# Sample Input
#
# 9
# 10 20 20 10 10 30 50 10 20
# Sample Output
#
# 3
# Explanation
#
# sock.png
#
# John can match three pairs of socks.

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
    result = ar.sort!
    pairs = 0
    ar.each_with_index do |number, i|
        if ar[i] == ar[i +1]
            pairs += 1
            ar.delete_at(i+1)
        end
    end
    result = pairs
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = sockMerchant n, ar

fptr.write result
fptr.write "\n"

fptr.close()
