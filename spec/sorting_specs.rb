include RSpec
require_relative '../Sorting/bucket_sort'
require_relative '../Sorting/quick_sort'
require_relative '../Sorting/heap_sort'

RSpec.describe 'sorting algorithms' do
  describe "#bucket sort" do
    it "#sorts the array using bucket sort" do
      expect(bucket_sort([1,50,2,60,33])).to eq [1,2,33,50,60]
      expect(bucket_sort([])).to eq []
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
      expect(quick_sort([])).to eq []
      expect(quick_sort([1])).to eq [1]
      expect(quick_sort(["Joe", "Jack", "Jill"])).to eq ["Jack", "Jill", "Joe"]
    end
  end


end
