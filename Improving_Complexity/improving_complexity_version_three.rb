# version three

#This code has been rewritten to improve space complexity performance

# This method takes n arrays as input and combine them in sorted ascending order
def quick_sort(array)

  return [] if array.empty?
      pivot = array.shift;
      low = []
      high = []
      array.each do |i|

        if i <= pivot
          low.push(i)
        else
          high.push(i)
        end
      end
      return quick_sort(low) + [pivot] + quick_sort(high)

end

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten

  quick_sort(combined_array)

end
