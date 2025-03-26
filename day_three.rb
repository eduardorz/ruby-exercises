# funcion que devuelva los pares de un array

# forma 1
def no_odds( values )
    no_odds_array = []
    
    values.each do |value|
      no_odds_array << value if value.even?
    end
    
    no_odds_array
end

# forma 2

def no_odds( values )
    values.select { |value| value.even? }
end

# forma 3

def no_odds( values )
    values.select &:even?
end

# Convert a Number to a String
def number_to_string(num)
    num.to_s
end

class String
    def toJadenCase
      self.split.map(&:capitalize).join(" ")
    end
  end