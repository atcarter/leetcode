RSpec.describe "TrappingRainWater" do
  context "when height = [0,1,0,2,1,0,1,3,2,1,2,1]" do
    it "returns 9" do
      height = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]

      expect(trap(height)).to eq(6)
    end
  end

  context "when height = [4,2,0,3,2,5]" do
    it "returns 9" do
      height = [4, 2, 0, 3, 2, 5]

      expect(trap(height)).to eq(9)
    end
  end

  context "when height = []" do
    it "returns 0" do
      height = []

      expect(trap(height)).to eq(0)
    end
  end
end
