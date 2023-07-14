class Solver
  def factorial(number)
    raise 'Error the argument is not integer' unless number.is_a?(Integer)
    raise 'Error the argument is negative' if number.negative?
    return 1 if number.zero? || number == 1

    (1..number).inject(:*)
  end

  def reverse(word)
    raise 'Error the argument is not string' unless word.is_a?(String)

    word.reverse
  end

  def fizzbuzz(number)
    raise 'Error the argument is not integer' unless number.is_a?(Integer)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?

    number.to_s
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
    it 'argument is string' do
      solver = Solver.new
      expect { solver.reverse(1) }.to raise_error('Error the argument is not string')
      expect { solver.reverse(true) }.to raise_error('Error the argument is not string')
    end
    it 'return reverse of argument' do
      solver = Solver.new
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it 'has one argument' do
      expect(subject).to respond_to(:fizzbuzz).with(1).argument
    end
    it 'argument is integer' do
      solver = Solver.new
      expect { solver.fizzbuzz('a') }.to raise_error('Error the argument is not integer')
    end
    it 'return fizz when argument is divisible by 3' do
      solver = Solver.new
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end
    it 'return buzz when argument is divisible by 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(10)).to eq('buzz')
    end
    it 'return fizzbuzz when argument is divisible by 3 and 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end
    it 'return the number as a string when argument is not divisible by 3 or 5' do
      solver = Solver.new
      expect(solver.fizzbuzz(4)).to eq('4')
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end
