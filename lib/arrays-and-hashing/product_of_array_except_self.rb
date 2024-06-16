# @param {Integer[]} nums
# @return {Integer[]}
# TC: Simplifies to O(n) because we iterate over the nums array once in each loop.
# SC: O(1) as we don't count the space our output takes.
def product_except_self(nums)
  result = []
  prefix = 1

  nums.each do |num|
    result << prefix
    prefix *= num
  end

  postfix = 1
  (0...nums.length).reverse_each do |i|
    result[i] *= postfix
    postfix *= nums[i]
  end

  result
end
