# Insertion Sort
# O(n^2) Average Complexity

collection = [100,15,61,17,38,12]

def insertion_sort(values)


  for i in 0..values.length
    value = values[i]
    x = i

    begin
    	values[x] = values[x-1]
    	x = x -1
    end while x > 0 && values[x-1] > x

    values[x] = value

  end

      puts values


end

puts insertion_sort(collection)
