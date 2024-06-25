# @param {String} s
# @return {Boolean}
# TC: O(n)
# SC: O(n) since the stack could contain as many characters as our input string.
def is_valid(s)
  hash = {
    ")" => "(",
    "]" => "[",
    "}" => "{"
  }

  stack = []

  s.chars.each do |c|
    if !hash.has_key?(c)
      stack.push(c)
    elsif stack[-1] == hash[c]
      stack.pop
    else
      return false
    end
  end

  stack.length == 0
end
