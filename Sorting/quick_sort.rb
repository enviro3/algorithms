def quick_sort(array)
  pivot = array.last
  partition_result = array.partition { |i| i <= pivot }

  return partition_result.flatten
end
