# version two

#This code has been rewritten to improve time complexity

# This method takes n arrays as input and combine them in sorted ascending  order
require_relative 'min_heap'

def heap_sort(array)
  heap = MinHeap.new()
  sorted_array = []

  for i in array do
    heap.insert(i)
  end

  for i in 0...array.length do
    min = heap.get_minimum()
    sorted_array.push(min)
    heap.delete_minimum
  end

  return sorted_array

end

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten

  heap_sort(combined_array)

end
