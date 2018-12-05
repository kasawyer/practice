# Complete the function solveMeFirst to compute the sum of two integers.
#
# Function prototype:
#
# int solveMeFirst(int a, int b);
#
# where,
#
# a is the first integer input.
# b is the second integer input
# Return values
#
# sum of the above two integers
# Sample Input
#
# a = 2
# b = 3
# Sample Output
#
# 5
# Explanation
#
# The sum of the two integers  and  is computed as: .

def solveMeFirst (a, b)
  a + b
end

val1 = gets.to_i
val2 = gets.to_i
sum = solveMeFirst(val1,val2)
print (sum)
