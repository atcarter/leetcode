# @param {Integer} n
# @return {String[]}
# TC: O(4^n/sqrt(n))
# SC: O(2n) => O(n) simplified
# only add an open parenthesis if open_count < n
# only add a closing parenthesis if close_count < open_count
# valid string if open_count == n && close_count == n  (base case)
def generate_parenthesis(n)
  @n_pairs = n
  @result = []
  @stack = []
  backtrack(0, 0)
  @result
end

def backtrack(open_count, close_count)
  if open_count == @n_pairs && close_count == @n_pairs
    @result << @stack.join
    return
  end
  if open_count < @n_pairs
    @stack << "("
    backtrack(open_count + 1, close_count)
    @stack.pop
  end
  if close_count < open_count
    @stack << ")"
    backtrack(open_count, close_count + 1)
    @stack.pop
  end
end
