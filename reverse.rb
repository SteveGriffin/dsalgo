# ruby string reversal


# string reversal method
def self.reverse(string)

  # temp string to hold reversed value
  temp = ""
  # get length of string parameter
  length = string.length - 1

  # work through the string backwards,
  # appending the results to the temp string
  begin
    temp << string[length]
    length = length - 1
  end while length >= 0

  # return reversed value
  temp
end

# test code
def self.test(test_string)
  puts reverse(test_string)
end

# call test function
test("test")
