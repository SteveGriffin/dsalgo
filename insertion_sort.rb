# Insertion Sort
# O(n^2) Average Complexity


collection = [100,15,61,17,38,12]

def insertion_sort(values)

  # Start sorting process at position 1 of the array
  # First position (0) is the start of the sorted array
  for i in 1..values.length - 1

    # current value
    value = values[i]

    # current index
    index = i

    # while loop to perform sorting
    # condition is true while the index is greater than zero
    # and the current value is less than the value to the left
    #
    # moves through sorted portion right to left,
    # moves through unsorted portion left to right
    begin
      # take the value from the left and shift it to the right
      # to create space for the next inserted value
      values[index] = values[index-1]
      # set the current index to the left to continue sorting
      index = index -1
    end while index > 0 && values[index-1] > value

    # insert the element into the sorted portion
    values[index] = value

  end

  # return the sorted values
  values


end

# run the sort
puts insertion_sort(collection)
