# ruby linked list

require 'pry'

class Node

  attr_accessor :name, :next

  # constructor
  def initialize(name)
    @name = name
  end


  # # method to set next node in the list
  # def set_next(node)
  # 	@next = node
  # end

end

# linked list class for node management
class LinkedList
	# TBD
end

a = Node.new("Stephen")
b = Node.new("Test")
c = Node.new("blah")

binding.pry

puts "test"
