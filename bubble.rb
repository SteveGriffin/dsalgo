# Bubble sort
# O(n^2) Average complexity


def self.sort(keys)
  0.upto(keys.size-1) do |i|
    (keys.size-1).downto(i+1) do |j|
      (keys[j], keys[j-1] = keys[j-1], keys[j]) if keys[j] < keys[j-1]
    end
  end
  keys
end

collection = [100,15,61,17,38,12]

puts sort(collection)
