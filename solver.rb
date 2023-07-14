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
