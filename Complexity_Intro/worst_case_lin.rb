#Write a Ruby method that takes a number n. This method must print the worst-case number of iterations for linear search to find an item in collections of array one to n. Use it to generate a table of worst-case iterations of collections up to array 10.

def linear_search(array, n)
  puts "empty" if array.empty? == true
  puts "Need a collection with size of 10 or fewer" if array.length > 10

  for i in 0..array.length do
    if array[i] == n
      puts i.to_s + "," + array[i].to_s
      return puts "Worse Case number of iterations is #{i+1}"
    else
      puts i.to_s + "," + array[i].to_s
    end
  end


end

sample_array = [0,3,5,7,10,11,12,17,33,88]
sample_n = 88

linear_search(sample_array,sample_n)
