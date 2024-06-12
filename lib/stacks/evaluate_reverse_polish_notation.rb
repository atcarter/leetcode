# @param {String[]} tokens
# @return {Integer}
# TC: O(n)
# SC: O(n)
def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    case token
    when  '+'
      stack << (stack.pop.to_i + stack.pop.to_i)
    when  '-'
      subtrahend = stack.pop.to_i
      minuend = stack.pop.to_i
      stack << (minuend - subtrahend)
    when '*'
      stack << (stack.pop.to_i * stack.pop.to_i)
    when '/'
      divisor = stack.pop.to_i
      dividend = stack.pop.to_i
      stack << (dividend.to_f / divisor.to_f).truncate
    else
      stack << token.to_i
    end
  end

  stack[-1]
end