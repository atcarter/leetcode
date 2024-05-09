# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# TC: O(n) going through nums array once.
# SC: O(n) hash at worst will be the size of nums.
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
    ideal = target - num
    if hash.has_key?(ideal)
      return [index, hash[ideal]]
    else
      hash[num] = index
    end
  end
end