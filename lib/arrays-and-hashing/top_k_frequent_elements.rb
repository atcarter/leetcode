# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
# TC: O(n) because we iterate over our input array once.
# SC: O(n) because we store each num in the input array in a hash and in another array
def top_k_frequent(nums, k)
  hash = {}
  bucket_array = Array.new(nums.length + 1) { Array.new }
  result = []

  nums.each do |num|
    hash[num] ? hash[num] += 1 : hash[num] = 1
  end

  hash.each do |num, frequency|
    bucket_array[frequency] << num
  end

  bucket_array.reverse_each do |numbers|
    numbers.each do |elem|
      result << elem

      if result.length == k
        return result
      end
    end
  end
end