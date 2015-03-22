require 'pry'

# Hash table implementation
class HashTable1

  # hashed collection
  @@collection = Array.new

  # Constructor
  def initialize

  end

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

      # return result
      total
    end

  end

  # insert value into collection
  def insert(value)
    #get hashed value
    hash_value = hash_function(value)
    # insert value
    @@collection[hash_value] = value
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

  def test
  end


end


h = HashTable1.new

# binding.pry

h.hash_function("test")
