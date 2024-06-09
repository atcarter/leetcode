RSpec.describe 'ThreeSum' do
  context 'when nums is [-1,0,1,2,-1,-4]' do
    it 'returns [[-1,-1,2],[-1,0,1]]' do
      nums = [-1, 0, 1, 2, -1, -4]

      expect(three_sum(nums)).to include([-1, -1, 2])
      expect(three_sum(nums)).to include([-1, 0, 1])
    end
  end

  context 'when nums is [0,1,1]' do
    it 'returns []' do
      nums = [0, 1, 1]

      expect(three_sum(nums)).to eq([])
    end
  end

  context 'when nums is [0,0,0]' do
    it 'returns [[0,0,0]]' do
      nums = [0, 0, 0]

      expect(three_sum(nums)).to eq([[0, 0, 0]])
    end
  end

  context 'when nums is [-2,0,0,2,2]' do
    it 'returns [[-2,0,2]]' do
      nums = [-2, 0, 0, 2, 2]

      expect(three_sum(nums)).to eq([[-2, 0, 2]])
    end
  end
end
