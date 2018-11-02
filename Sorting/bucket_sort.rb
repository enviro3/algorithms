require_relative 'quick_sort'

def bucket_sort(array)
  buckets = []
  for i in 0..100 do
    buckets.push([])
  end

  for element in array do
    if element == 0
      buckets[1].push(element)
      next
    end
    number_of_digits = Math.log10(element).floor + 1
    buckets[number_of_digits].push(element)
  end

  for i in 0..10 do
    buckets[i] = quick_sort(buckets[i])
  end

  return buckets.flatten

end
