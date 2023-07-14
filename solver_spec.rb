class Solver
  def factorial(number)
    raise 'Error the argument is not integer' unless number.is_a?(Integer)
    raise 'Error the argument is negative' if number.negative?
    return 1 if number.zero? || number == 1

    (1..number).inject(:*)
  end

  def reverse(word)
    
  end
end

describe Solver do
  describe '#factorial' do
    it 'has one argument' do
      expect(subject).to respond_to(:factorial).with(1).argument
    end
    it 'argument is integer greater or equal than zero' do
      solver = Solver.new
      expect { solver.factorial('a') }.to raise_error('Error the argument is not integer')
      expect { solver.factorial(-4) }.to raise_error('Error the argument is negative')
    end
    it 'return 1 when argument is 1 or 0' do
      solver = Solver.new
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(0)).to eq(1)
    end
    # calculate factorial
    it 'return factorial of argument' do
      solver = Solver.new
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(4)).to eq(24)
    end
  end

  describe '#reverse' do
    it 'has one argument' do
      expect(subject).to respond_to(:reverse).with(1).argument
    end
  end
end
