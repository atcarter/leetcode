# TC: Each function runs in O(1) time.
class MinStack
  def initialize
    @stack = []
    @min_stack = []
  end

  #     :type val: Integer
  #     :rtype: Void
  def push(val)
    if @min_stack[-1].nil?
      @min_stack.push(val)
    elsif val <= @min_stack[-1]
      @min_stack.push(val)
    end
    @stack.push(val)
  end

  #     :rtype: Void
  def pop
    if top == get_min
      @min_stack.pop
      @stack.pop
    else
      @stack.pop
    end
  end

  #     :rtype: Integer
  def top
    @stack[-1]
  end

  #     :rtype: Integer
  def get_min
    @min_stack[-1]
  end
end

# Your MinStack object will be instantiated and called as such:
# obj = MinStack.new()
# obj.push(val)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.get_min()
