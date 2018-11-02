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
