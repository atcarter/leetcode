# @param {String} s
# @param {String} t
# @return {Boolean}
# TC: O(nlogn) using sort method.
# SC: Good sorting algorithms assume O(1), could be O(n).
def is_anagram(s, t)
  if s.chars.sort == t.chars.sort
    true
  else
    false
  end
end