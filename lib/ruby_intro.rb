# When done, submit this entire file to the autograder.

# Part 1

# The reduce method increments by adding each element to total
def sum arr
  arr.reduce(0) { |total, element| total + element }
end

#-------------------------------------------------------

# The arr is sorted in increasing order and the last two elements are
# sum-ed and returned
def max_2_sum arr
  sum(arr.sort.last(2))
end

#-------------------------------------------------------

#

def sum_to_n? arr, n

  if arr.length < 2 # false if 0 or 1 elements in arr
    return false
  else
    # combine 2 elements of array and find 2 entries that totals n. if found return true else false
    arr.combination(2).find{|i,j| i + j == n } ? true : false
  end

end



#--------------------------------------------------------

# Part 2

def hello name
  return "Hello, #{name}"
end

#--------------------------------------------------------

def starts_with_consonant? s
  # If a match is found that begins with any consonants, return true
  /^[bcdfghjklmnpqrstvwxyz]/i.match(s) != nil
end

#--------------------------------------------------------

def binary_multiple_of_4? s
  # Matches that starts and ends with 0/1
  if /^[0-1]+$/.match(s) != nil
    return s.to_i(2) % 4 == 0  # if the string evaluates to multiple 0f 4
  end
  return false
end


# Part 3


class BookInStock

  attr_accessor(:isbn, :price) # Create read/write attr_accessor isbn and price

  def initialize(isbn, price)  # Constructor that takes isbn and price as input and checks
    raise ArgumentError, "Wrong type of arguments" if isbn.empty?  or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", @price)  # Prints output in $xx.xx format
  end

end

