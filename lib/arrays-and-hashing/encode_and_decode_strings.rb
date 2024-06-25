# Encodes a list of strings to a single string.
#
# @param {string[]} strs
# @return {string}
# TC: O(n) going over each string in the array once.
# SC: O(1) constant space is used as no extra structures are required.
def encode(strs)
  result = ""

  strs.each do |string|
    length = string.length
    result += "#{length}##{string}"
  end

  result
end

# Decodes a single string to a list of strings.
#
# @param {string} s
# @return {string[]}
# # TC: O(n) going over each character in the encoded string once.
# # SC: O(1) constant space is used as no extra structures are required.
def decode(s)
  i = 0
  result = []

  while i < s.length
    j = i
    j += 1 while s[j] != "#"
    length = s[i...j].to_i
    i = j + 1
    j = i + length
    result << s[i...j]
    i = j
  end

  result
end

# Your functions will be called as such:
# decode(encode(strs))
