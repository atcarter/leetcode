RSpec.describe "ValidPalindrome" do
  context 'when the string is "A man, a plan, a canal: Panama"' do
    it "returns true" do
      s = "A man, a plan, a canal: Panama"

      expect(is_palindrome(s)).to eq(true)
    end
  end

  context 'when the string is "race a car"' do
    it "returns true" do
      s = "race a car"

      expect(is_palindrome(s)).to eq(false)
    end
  end

  context 'when the string is " "' do
    it "returns true" do
      s = " "

      expect(is_palindrome(s)).to eq(true)
    end
  end
end
