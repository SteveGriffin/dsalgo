# ruby string reversal



def self.reverse(string)

	temp = ""

	for char in string.length..0 do 
		puts char
		temp = temp << char
	end

	temp

end

s = "test"
puts reverse(s)

