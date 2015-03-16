#Ruby implementation of binary search

values = [1,7,14,16,55,77, 79,100,150]


def binary_search(collection, value, high, low)

  mid = collection[collection.length / 2]

  if value == mid
    return collection[mid]
  elsif value < mid
  elsif value > mid
  else
  end

end

puts binary_search(values, 14, collection.length - 1, )
