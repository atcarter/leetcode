RSpec.describe 'ValidParentheses' do
  context "when s is '()'" do
    it 'returns true' do
      s = '()'

      expect(is_valid(s)).to be(true)
    end
  end

  context "when s is '()[]{}'" do
    it 'returns true' do
      s = '()[]{}'

      expect(is_valid(s)).to be(true)
    end
  end

  context "when s is '(]'" do
    it 'returns true' do
      s = '(]'

      expect(is_valid(s)).to be(false)
    end
  end

  context "when s is ']'" do
    it 'returns false' do
      s = ']'

      expect(is_valid(s)).to be(false)
    end
  end
end
