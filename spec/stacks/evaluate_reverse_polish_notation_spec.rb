RSpec.describe "EvaluateReversePolishNotation" do
  context 'when the tokens are ["2","1","+","3","*"]' do
    it "returns 9" do
      tokens = ["2", "1", "+", "3", "*"]

      expect(eval_rpn(tokens)).to eq(9)
    end
  end

  context 'when the tokens are ["4","13","5","/","+"]' do
    it "returns 6" do
      tokens = ["4", "13", "5", "/", "+"]

      expect(eval_rpn(tokens)).to eq(6)
    end
  end

  context 'when the tokens are ["10","6","9","3","+","-11","*","/","*","17","+","5","+"]' do
    it "returns 22" do
      tokens = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"]

      expect(eval_rpn(tokens)).to eq(22)
    end
  end
end
