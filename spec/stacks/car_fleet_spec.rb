RSpec.describe "CarFleet" do
  describe "#car_fleet" do
    it "returns the number of car fleets that will arrive at the target destination" do
      target_one = 12
      position_one = [10, 8, 0, 5, 3]
      speed_one = [2, 4, 1, 1, 3]
      target_two = 10
      position_two = [3]
      speed_two = [3]
      target_three = 100
      position_three = [0, 2, 4]
      speed_three = [4, 2, 1]

      expect(car_fleet(target_one, position_one, speed_one)).to eq(3)
      expect(car_fleet(target_two, position_two, speed_two)).to eq(1)
      expect(car_fleet(target_three, position_three, speed_three)).to eq(1)
    end
  end
end
