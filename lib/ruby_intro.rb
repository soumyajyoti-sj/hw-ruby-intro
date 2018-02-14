# When done, submit this entire file to the autograder.

# Part 1


def sum arr
  arr.reduce 0, :+
end


#-------------------------------------------------------

def max_2_sum arr
  sum(arr.sort.last(2))
end

#-------------------------------------------------------

def sum_to_n? arr, n
  if arr.empty?
    return false
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end

  return false
end

#--------------------------------------------------------

# Part 2

def hello name
  "Hello, " + name
end

#--------------------------------------------------------

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

#--------------------------------------------------------

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  false
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
