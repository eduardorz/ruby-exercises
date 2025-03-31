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


# Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.
# Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).
# If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

def order(words)
    return "" if words.empty? 
  
    words.split.sort_by { |word| word[/\d/] }.join(" ")
  end