include RSpec
require_relative '../Sorting/bucket_sort'
require_relative '../Sorting/quick_sort'
require_relative '../Sorting/heap_sort'

RSpec.describe 'sorting algorithms' do
  describe "#bucket sort" do
    it "#sorts the array using bucket sort" do
      expect(bucket_sort([0,1,50,2,60,33])).to eq [0,1,2,33,50,60]
      expect(bucket_sort([1,3,77,898,765,50,2,60,33])).to eq [1,2,3,33,50,60,77,765,898]
      expect(bucket_sort([4,6,4,12,2,3,4,6,6,4,32,21])).to eq [2,3,4,4,4,4,6,6,6,12,21,32]
      expect(bucket_sort([4,6,12,2,3,4,32,21])).to eq [2,3,4,4,6,12,21,32]
      expect(bucket_sort([1])).to eq [1]
    end
  end

  describe "#heap sort" do
    it "#sorts the array using heap sort" do
      expect(heap_sort([1,50,2,60,33])).to eq [1,2,33,50,60]
      expect(heap_sort([])).to eq []
      expect(heap_sort([1])).to eq [1]
      expect(heap_sort(["Joe", "Jack", "Jill"])).to eq ["Jack", "Jill", "Joe"]
    end
  end

  describe "#quick sort" do
    it "#sorts the array using quick sort" do
      expect(quick_sort([1,50,2,60,33])).to eq [1,2,33,50,60]
      expect(quick_sort([1,3,77,898,765,50,2,60,33])).to eq [1,2,3,33,50,60,77,765,898]
      expect(quick_sort([4,6,4,12,2,3,4,6,6,4,32,21])).to eq [2,3,4,4,4,4,6,6,6,12,21,32]
      expect(quick_sort([4,6,12,2,3,4,32,21])).to eq [2,3,4,4,6,12,21,32]
      expect(quick_sort([])).to eq []
      expect(quick_sort([1])).to eq [1]
      expect(quick_sort(["Joe", "Jack", "Jill"])).to eq ["Jack", "Jill", "Joe"]
    end
  end


end
