RSpec.describe "DailyTemperatures" do
  describe "#daily_temperatures" do
    it "returns an array with the number of days you have to wait for a warmer day" do
      temperatures_one = [73, 74, 75, 71, 69, 72, 76, 73]
      temperatures_two = [30, 40, 50, 60]
      temperatures_three = [30, 60, 90]

      expect(daily_temperatures(temperatures_one)).to eq([1, 1, 4, 2, 1, 1, 0, 0])
      expect(daily_temperatures(temperatures_two)).to eq([1, 1, 1, 0])
      expect(daily_temperatures(temperatures_three)).to eq([1, 1, 0])
    end
  end
end
