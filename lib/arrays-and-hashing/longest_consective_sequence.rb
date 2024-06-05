# @param {Integer[]} nums
# @return {Integer}
# TC: O(n)
# SC: O(n)
def longest_consecutive(nums)
  nums_set = Set.new(nums)
  longest = 0

  nums_set.each do |num|
    if !nums_set.include?(num - 1)
      length = 1
      while nums_set.include?(num + length)
        length += 1
      end
      longest = [longest, length].max
    end
  end

  longest
end