RSpec.describe "KokoEatingBananas" do
  describe "#min_eating_speed" do
    it "returns the minimum bananas, k, Koko can eat within h hours" do
      piles_one = [3, 6, 7, 11]
      h_one = 8
      piles_two = [30, 11, 23, 4, 20]
      h_two = 5
      piles_three = [30, 11, 23, 4, 20]
      h_three = 6
      piles_four = [312884470]
      h_four = 968709470

      expect(min_eating_speed(piles_one, h_one)).to eq(4)
      expect(min_eating_speed(piles_two, h_two)).to eq(30)
      expect(min_eating_speed(piles_three, h_three)).to eq(23)
      expect(min_eating_speed(piles_four, h_four)).to eq(1)
    end
  end
end
