def binary_search_helper(low, middle, high, array_of_numbers, value)
  puts "low: " + low.to_s + " middle:  " + middle.to_s + " high " + high.to_s + ' ' + array_of_numbers.to_s
  if low > high
    return false
  end
  puts array_of_numbers[middle]
  puts value
  if array_of_numbers[middle] == value
    puts "I'm in the if statement"
    return middle
  elsif array_of_numbers[middle] < value
    low = middle +1
    middle = (low + high)/2
    puts "I'm in the elsif"
    return binary_search_helper(low, middle, high, array_of_numbers, value)
  else
    high = middle - 1
    middle = (low + high)/2
    puts middle.to_s + "   " + high.to_s + "    " + "I'm in the else"
    return binary_search_helper(low, middle, high, array_of_numbers, value)
  end
end


def binary_search(array_of_numbers, value)
  low = 0
  middle = array_of_numbers.length/2
  high = (array_of_numbers.length) -1

  return binary_search_helper(low, middle, high, array_of_numbers, value)

end

puts binary_search([2,3,4],4)
