RSpec.describe 'GenerateParentheses' do
  context 'when n is 3' do
    it 'returns ["((()))","(()())","(())()","()(())","()()()"]' do
      expect(generate_parenthesis(3)).to eq(['((()))', '(()())', '(())()', '()(())', '()()()'])
    end
  end

  context 'when n is 1' do
    it 'returns ["()"]' do
      expect(generate_parenthesis(3)).to eq(['()'])
    end
  end
end
