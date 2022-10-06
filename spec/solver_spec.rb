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
  describe 'Check if the reverse method works correctly' do
    it 'idnuruB should be reversed to be Burundi' do
      expect(@solver.reverse('idnuruB')).to eq('Burundi')
    end
    it 'isnuhadaF should be reversed to be Fadahunsi' do
      expect(@solver.reverse('isnuhadaF')).to eq('Fadahunsi')
    end
  end
  describe 'Testing fizzbuzz' do
    it 'should return fizz for 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end
    it 'should return buzz for 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end
    it 'should return fizzbuzz for 15' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end
    it 'should return 7 for 7' do
      expect(@solver.fizzbuzz(7)).to eq(7)
    end
  end
end
