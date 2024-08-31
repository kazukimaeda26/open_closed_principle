class NewFizzBuzz
  def initialize(rules)
    @rules = rules
  end

  def convert(number)
    carry = ''
    @rules.each do |rule|
      carry = rule.apply(carry, number) if rule.match(carry, number)
    end

    carry
  end
end