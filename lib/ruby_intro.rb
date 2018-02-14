# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.reduce(0) { |total, element| total + element }
end

#-------------------------------------------------------

def max_2_sum arr
  sum(arr.sort.last(2))
end

#-------------------------------------------------------

def sum_to_n? arr, n

  if arr.length < 2
    return false
  else
    arr.combination(2).find{|i,j| i + j == n } ? true : false
  end

end



#--------------------------------------------------------

# Part 2

def hello name
  "Hello, #{name}"
end

#--------------------------------------------------------

def starts_with_consonant? s
  /^[bcdfghjklmnprstvwxyz]/i.match(s) != nil
end

#--------------------------------------------------------

def binary_multiple_of_4? s
  if /^[0-1]+$/.match(s) != nil
    return s.to_i(2) % 4 == 0
  end
  return false
end


# Part 3


class BookInStock

  attr_accessor(:isbn, :price)

  def initialize(isbn, price)
    raise ArgumentError, "Wrong type of arguments" if isbn.empty?  or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)
  end

end

