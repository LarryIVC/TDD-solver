# Create a class called Solver
class Solver
  # Create a method called factorial
  def factorial(number)

  end
end

describe Solver do
  describe '#factorial' do
    # verify that the factorial has one argument
    it 'has one argument' do
      expect(subject).to respond_to(:factorial).with(1).argument
    end
    # raise an error if verify the argument is integer greater tan zero
    it 'is not integer greater than zero raise error' do
      solver = Solver.new
      expect { solver.factorial('a') }.to raise_error('Error the argument is not integer')
      expect { solver.factorial(-4) }.to raise_error('Error the argument is not greater than zero')
    end
  end
end
