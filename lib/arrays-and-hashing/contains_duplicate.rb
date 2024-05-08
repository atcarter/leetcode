# @param {Integer[]} nums
# @return {Boolean}
# TC: O(n) going through nums array once.
# SC: O(n) hash at worst will be the size of nums.
def contains_duplicate(nums)
  hash = {}

  nums.each do |element|
    if hash.has_key?(element)
      return true
    else
      hash[element] = true
    end
  end

  false
end