# require_relative './fizz_buzz'

# fizz_buzz = FizzBuzz.new

# (1..30).each do |number|
#   puts fizz_buzz.convert(number)
# end

require_relative './new_fizz_buzz'
require_relative './rules'

rules = [
  Rules::Rule.new(2, 'Nizz'),
  Rules::Rule.new(3, 'Fizz'),
  Rules::Rule.new(5, 'Buzz'),
  Rules::DefaultRule.new
]
new_fizz_buzz = NewFizzBuzz.new(rules)

(1..30).each do |number|
  puts new_fizz_buzz.convert(number)
end
