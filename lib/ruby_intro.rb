# When done, submit this entire file to the autograder.

# Part 1

def sum array
  # YOUR CODE HERE
    total = 0
  if array.length == 0
    return 0
  else
    array.each do|number|
      total = total + number
    end
    return total
  end
end

def max_2_sum arr
  max = 0
  secondMax = 0

  if arr.length == 0
    return 0
  elsif arr.length ==1
    max = arr[0]
    return max +secondMax
    #end
  else
    sort_array =arr.sort.reverse
    max = sort_array[0]
    secondMax = sort_array[1]
    return max +secondMax
  end
end  


def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    return false
  else
    arr.each do|number1|
    newArray =arr - [number1]
    newArray.each do |number2|
      if number1 + number2 ==n
        return true      
      end
    end
    return false
  end
  end
end

# Part 2

def hello(name)
 return "Hello, #{name}"
end

def starts_with_consonant? s
   /^[bcdfghjklmnpqrstvwxyz]/i.match(s)
end

def binary_multiple_of_4? s
  if s =~ (/^[01]+$/) && (s.to_i%4==0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
 attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price<=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
    
  end
  
  
end