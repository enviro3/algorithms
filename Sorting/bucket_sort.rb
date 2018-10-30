# function bucketSort(array, n) is
#   buckets ← new array of n empty lists
#   for i = 0 to (length(array)-1) do
#     insert array[i] into buckets[msbits(array[i], k)]
#   for i = 0 to n - 1 do
#     nextSort(buckets[i]);
#   return the concatenation of buckets[0], ...., buckets[n-1]

def bucket_sort(array)
  buckets = []
  for i in 0..10 do
    buckets.push([])
  end

  for i in 0..array.length-1 do
    first_digit = array[i].to_s[0].to_i
    buckets[first_digit].push(array[i])
  end

  for i in 0..10 do
    buckets[i].sort!
  end

  return buckets.flatten

end
