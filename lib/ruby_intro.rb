# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sumX = arr.inject(0, :+)
  sumX
end

def max_2_sum arr
  # YOUR CODE HERE
  sumArr = arr.max(2)
  sumY = sumArr.inject(0, :+)
  sumY
end

def sum_to_n? arr, n
  # YOUR CODE HERE
   !!arr.combination(2).detect { |i, j| i + j == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.match?(/\A[^aeiou\d\W]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if !s.match(/\D/) && !s.match(/^$/)
    return true if s.to_i(10) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor(:isbn, :price)
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    unless !isbn.empty?
      raise ArgumentError.new('ISBN is empty')
    end
    unless !price.zero? && !price.negative?
      raise ArgumentError.new('Price is less than or equal to zero')
    end
  end
  def price_as_string
    "$#{"%.2f" %@price}"
  end
end
