require_relative '../solver'

describe 'Test factorials, fizzbuzz and reverse string' do
  before(:each) do
    @solver = Solver.new
  end

  describe 'Check if the factorial works correctly' do
    it 'Check if the factorial of a negative number return nil' do
      expect(@solver.factorial(-rand(1...1000))).to eq(nil)
    end

    it 'Check if the factorial of 7 return he correct value 5040' do
      expect(@solver.factorial(7)).to eq(5040)
    end
    it 'Check if the factorial of 3 return he correct value 6' do
      expect(@solver.factorial(3)).to eq(6)
    end
    it 'Check if the factorial of 11 return he correct value 39916800' do
      expect(@solver.factorial(11)).to eq(39_916_800)
    end
    it 'Check if the factorial of 1 return he correct value 1' do
      expect(@solver.factorial(1)).to eq(1)
    end
  end
end
