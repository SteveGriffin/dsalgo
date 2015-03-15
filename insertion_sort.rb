# Insertion Sort
# O(n^2) Average Complexity


collection = [100,15,61,17,38,12]

def insertion_sort(values)


  for i in 1..values.length - 1
    value = values[i]
    index = i

    begin
    	values[index] = values[index-1]
    	index = index -1
    end while index > 0 && values[index-1] > value

    values[index] = value

  end

       puts values


end

puts insertion_sort(collection)
