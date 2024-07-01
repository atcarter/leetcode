RSpec.describe "LargestRectangleInHistogram" do
  describe "#largest_rectangle_area" do
    it "returns the area of the largest rectangle in the histogram" do
      heights_one = [2, 1, 5, 6, 2, 3]
      heights_two = [2, 4]
      heights_three = [2, 1, 2]

      expect(largest_rectangle_area(heights_one)).to eq(10)
      expect(largest_rectangle_area(heights_two)).to eq(4)
      expect(largest_rectangle_area(heights_three)).to eq(3)
    end
  end
end
