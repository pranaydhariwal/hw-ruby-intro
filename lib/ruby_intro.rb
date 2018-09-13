# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
  if arr.size == 0 then
   return 0
  end
  
  if arr.size < 2 then
    return arr.first
  end
    return arr.sort.last(2).sum
end

def sum_to_n? arr, n
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
	
end