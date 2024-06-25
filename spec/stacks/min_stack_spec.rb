require_relative "../../lib/stacks/min_stack"

RSpec.describe MinStack do
  let(:min_stack) { MinStack.new }

  describe "#push" do
    it "pushes an element onto the stack" do
      min_stack.push(3)

      expect(min_stack.top).to eq(3)
    end
  end

  describe "#pop" do
    it "pops an element off of the stack" do
      min_stack.push(2)
      min_stack.pop

      expect(min_stack.top).to be_nil
    end
  end

  describe "#top" do
    it "peeks at the top element of the stack" do
      min_stack.push(2)

      expect(min_stack.top).to eq(2)
    end
  end

  describe "#get_min" do
    it "returns the minimum value within the stack" do
      min_stack.push(0)
      min_stack.push(1)
      min_stack.push(2)

      expect(min_stack.get_min).to eq(0)
    end
  end
end
