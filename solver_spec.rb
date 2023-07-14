# Create a class called Solver
class Solver

end

describe Solver do
  describe '#factorial' do
    # verify that the factorial has one argument
    it 'has one argument' do
      expect(subject).to respond_to(:factorial).with(1).argument
    end
end
end 