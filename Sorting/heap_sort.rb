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
