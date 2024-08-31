module Rules
  class Rule
    def initialize(divisor, word)
      @divisor = divisor
      @word = word
    end

    def match(_carry, number)
      (number % @divisor).zero?
    end

    def apply(carry, _number)
      carry + @word
    end
  end

  class DefaultRule
    def match(carry, _number)
      carry.empty?
    end

    def apply(_carry, number)
      number.to_s
    end
  end
end