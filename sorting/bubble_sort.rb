ARRAY_SIZE = 50
MAX_RANGE = 35
array = []

(0..ARRAY_SIZE-1).each { array << Random.rand(MAX_RANGE) }

puts "Before: "
p array

for i in (0..ARRAY_SIZE - 2)
  for j in ((i + 1)..ARRAY_SIZE - 1)
    if array[i] > array[j]
      temp = array[j]
      array[j] = array[i]
      array[i] = temp
    end
  end
end

puts "Then: "
p array