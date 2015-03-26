#Ruby implementation of binary search

require 'pry'

values = [1,7,14,16,55,77, 79,100,150]


def binary_search(collection, search_value, collection_size)

  low = 0
  high = collection_size - 1

  #iterate until the entire collection has been searched
  while low <= high
  	#set the mid value
    mid = (low + high) / 2

    # if the mid value matches the search value, return the result
    if search_value == collection[mid]
      return collection[mid]

    # value is less than the mid, so the upper bound
    # is set to mid - 1
    elsif search_value < collection[mid]
      high = mid - 1

    else
      # value is greater than the mid value,
      # so the lower bound is set to mid + 1
      low = mid + 1
    end

    #value was not found
    if low > high
      return "value not found"
    end

  end
end

puts binary_search(values, 16, values.length )
