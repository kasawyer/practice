arr = [1, 2, 3]

def reverse_array_1(arr)
  reversed_arr = []
  arr.length.times do
    number = arr.pop
    reversed_arr << number
  end
  reversed_arr
end

puts reverse_array_1(arr)

arr = [1, 2, 3]

def reverse_array_2(arr)
  number = arr.pop
  reverse_array_2(arr) if arr.length > 0
  arr.unshift(number)
end

puts reverse_array_2(arr)
