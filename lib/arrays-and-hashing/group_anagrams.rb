# @param {String[]} strings
# @return {String[][]}
# TC: O(n*m) where n is the number of strings and m is the average length of those strings
# SC: O(n) where n is the number of inputs

def group_anagrams(strings)
  hash = {}

  strings.each do |string|
    key = [0] * 26

    string.chars.each do |char|
      key[char.ord - "a".ord] += 1
    end

    hash[key] ? hash[key] << string : hash[key] = [string]
  end

  hash.values
end