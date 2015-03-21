require 'pry'

# Hash table implementation
class HashTable1

  # Constructor
  def initialize

  end

  # Hashing function
  def hash_function(key)
  	# total
  	total = 0

  	# iterate over each character
  	key.each_char do |char|
  		# get the ascii value
  		ascii = char.ord
  		# add value of character to total
  		total += ascii
  		# modulo 1000 (table range)
  		total = total % 1000

  	end

  end

  def insert
  end

  def delete
  end

  def search
  end

  def test
  end


end


h = HashTable1.new

# binding.pry

h.hash_function("test")