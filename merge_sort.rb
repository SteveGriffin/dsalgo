# Merge sort ruby implementation
# O(n log(n)) average complexity

require 'pry'

def merge_sort(array)
  return array if array.size <= 1
  left = merge_sort array[0, array.size / 2]
  right = merge_sort array[array.size / 2, array.size]
 
  merge(left, right)
end
 
 
def merge(left, right)
  result = []
 
  while left.size > 0 && right.size > 0
    result << if left[0] <= right[0]
      left.shift
    else
      right.shift
    end
  end
 
  result.concat(left).concat(right)
end

collection = [100,12,87,14,3,9,27]
puts merge_sort(collection)