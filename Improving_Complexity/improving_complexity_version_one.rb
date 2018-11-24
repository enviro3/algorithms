# version one

#This code has been rewritten for code optimization

# This method takes n arrays as input and combine them in sorted ascending  order
def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.pop]

  for val in combined_array
    for i in 0..sorted_array.length
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
    end
  end

  # Return the sorted array
  sorted_array
end
