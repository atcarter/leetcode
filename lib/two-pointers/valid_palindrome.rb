# @param {String} s
# @return {Boolean}
# TC: O(n) simplified
# SC: O(1)
def is_palindrome(s)
  s = s.delete("^A-Za-z0-9")
  left = 0
  right = s.length - 1

  while left < right
    return false if s[left].downcase != s[right].downcase

    left += 1
    right -= 1
  end
  true
end
