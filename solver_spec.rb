# Create a class called Solver
class Solver
  # Create a method called factorial
  def factorial(number)
    raise 'Error the argument is not integer' unless number.is_a?(Integer)
    raise 'Error the argument is not greater than zero' unless number.positive?
  end
end

describe Solver do
  describe '#factorial' do
    it 'has one argument' do
      expect(subject).to respond_to(:factorial).with(1).argument
    end
    it 'argument is integer greater than zero' do
      solver = Solver.new
      expect { solver.factorial('a') }.to raise_error('Error the argument is not integer')
      expect { solver.factorial(-4) }.to raise_error('Error the argument is not greater than zero')
    end
    it 'return 1 when argument is 1 or 0' do
      solver = Solver.new
      expect(solver.factorial(1)).to eq(1)
      expect(solver.factorial(0)).to eq(1)
    end
  end
end
