# Evan Bakkal 
# CSCE 431

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |sum, x| sum += x}
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else 
    return sum(arr.max(2))
  end
end

def sum_to_n? arr, n
  if arr.empty? || arr.length == 1
    return false
  elsif arr.permutation(2).any? { |x,y| x + y == n}
    return true
  else 
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /\A[aeiou]|\A[^a-z0-9]/i
    return false
  elsif s.empty?
    return false
  else
    true
  end
end

def binary_multiple_of_4? s
  if s =~ /\A[01]+00$\Z|\b0*0\b/
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
   
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("ISBN cannot be 0")
    elsif price <= 0
      raise ArgumentError.new("Price cannot be less than or equal to 0")
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    return "$" + sprintf("%#.2f", @price)
  end
end
