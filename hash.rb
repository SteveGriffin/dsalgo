require 'pry'

# Hash table implementation
# O(1) Average complexity for search, insertion and delete

# Notes:
# supports collection size of 1k
# does not currently support chaining

class HashTable

  # hashed collection
  @@collection = Array.new

  # Hashing function
  def hash_function(value)
    # total
    total = 0

    # iterate over each character
    value.each_char do |char|
      # get the ascii value
      ascii = char.ord
      # add value of character to total
      total += ascii
      # modulo 1000 (table range)
      total = total % 1000
    end

    # return result
    total

  end

  # insert value into collection
  def insert(value)
    #get hashed value
    hash_value = hash_function(value)
    # insert value
    @@collection[hash_value] = value

    # return confirmation
    "value: " << value << " inserted at position: " << hash_value.to_s
  end

  # delete value from collection
  def delete(value)
    #get hashed value
    hash_value = hash_function(value)

    # check if value exists
    result = search(value)

    # if value exists
    if result
      # set value to nil
      @@collection[hash_value] = nil
      # return confirmation
      "value deleted"
    else
      # return error message
      "value not found"
    end


  end

  # search collection for value
  def search(value)
    #get hashed value
    hash_value = hash_function(value)

    # if value exists return true
    if @@collection[hash_value] == value
      return true
    else
      return false
    end
  end

  # function to test various hash table features
  def self.test
    # tests
    h = HashTable.new
    # test hash function
    puts h.hash_function("test")
    # test insert
    puts h.insert("test")
    # test search
    puts h.search("test")
    # test delete
    puts h.delete("test")

  end

end

# run test
HashTable.test
