# When done, submit this entire file to the autograder.

# Part 1

#Return the sum of elements from 'arr', return zero when it is empty.
def sum arr
  (arr.empty?)? 0 : arr.inject(:+)
end

#Return the sum of its two largest elements from 'arr', for an array with just one element, it should return that element.
def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.size==1
    return arr[arr.size-1]
  else
    arr=arr.sort
    return arr[arr.size-1]+arr[arr.size-2]
  end
end

# Return to a boolean value, true condition: iff any two elements in the 'arr' of integers sum to 'n'
def sum_to_n? arr, n
  if arr.size>=2
    for x in arr
      target = n-x
      tmp = arr.dup
      tmp.delete_at(tmp.index(x))
      return true if tmp.include?(target)
    end
  end
  false
end


# Part 2

#Return a string, "Hello, " concatenates with the 'name'.
def hello(name)
  "Hello, #{name}"
end

#Return a boolean value, true conditon: iff a string 's' starts with a consonant
def starts_with_consonant? s
  if s.empty?
    return false
  else
    stopwords = 'AEIOUaeiou0123456789$*~&!@#$%^()-=+/\?,.'
    stopwords.each_char{|c|
      return false if s.start_with?(c)
    }
  end
  true
end

##Return a boolean value, true conditon: iff a string 's' represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  if s.empty? || s.count('0-9')!=(s.size)
    return false
  else
    return true if s.end_with?('00') || s=='0'
  end
  false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty? || price <=0
      raise ArgumentError, 'Invalid Input'
    end
    @isbn = isbn
    @price = price
  end
  def price_as_string()
    return '$'+'%.2f'%@price
  end
end
