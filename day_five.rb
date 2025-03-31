# Implement a function that computes the difference between two lists. The function should remove all occurrences of elements from the first list (a) 
# that are present in the second list (b). The order of elements in the first list should be preserved in the result.

def diff(a, b)
  a.reject { |num| b.include?(num) }
end


#Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

def create_phone_number(numbers)
    format("(%d%d%d) %d%d%d-%d%d%d%d", *numbers)
  end


# Write a function, persistence, that takes in a positive 
# parameter num and returns its multiplicative persistence, which is the number of times you must 
# multiply the digits in num until you reach a single digit.


def persistence(n)
    count = 0
  while n >= 10  
    n = n.digits.reduce(:*)  
    count += 1  
  end
  count
end