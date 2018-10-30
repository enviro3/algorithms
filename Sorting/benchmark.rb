require_relative 'bucket_sort'
require_relative 'heap_sort'
require_relative 'min_heap'
require_relative 'quick_sort'
require 'benchmark'



minHeap = MinHeap.new()
bucket_sort = []
quick_sort = []


n = 50
Benchmark.bm do |x|
  puts "Compare 50 items"
  x.report("append 50 items minHeap") { for i in 1..n do minHeap.insert(i); end }
  x.report("append 50 items bucketSort"){ for i in 1..n do bucket_sort.push(i); end}
  x.report("append 50 items quickSort"){ for i in 1..n do quick_sort.push(i); end}

  
end
