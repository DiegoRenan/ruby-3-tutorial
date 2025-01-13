ARRAY_SIZE = 50
MAX_RANGE = 30
array = []

(0..ARRAY_SIZE-1).each { array << Random.rand(MAX_RANGE) }

puts "Before: "
p array

min_pos = 0

for i in (0..ARRAY_SIZE - 2)
  for j in (i+1..ARRAY_SIZE - 1)
    min_pos = j if array[j] < array[min_pos]
  end

  temp = array[i]
  array[i] = array[min_pos]
  array[min_pos] = temp
end


puts "Then: "
p array