ARRAY_SIZE = 50
MAX_RANGE = 35
array = []

(0..ARRAY_SIZE-1).each { array << Random.rand(MAX_RANGE) }

puts "Before: "
p array

min_pos = 0

for i in (0..ARRAY_SIZE - 1)
  j = i
  done = false
  while ((j > 0) && !done)
    if (array[j] < array[j - 1])
      temp = array[j - 1]
      array[j - 1] = array[j]
      array[j] = temp
    else
      done = true
    end
    
    j = j - 1
  end
end

puts "Then: "
p array