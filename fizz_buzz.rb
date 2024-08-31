class FizzBuzz
  def convert(number)
    return 'FizzBuzz' if (number % 15).zero?
    return 'Buzz' if (number % 5).zero?
    return 'Fizz' if (number % 3).zero?

    number
  end
end
