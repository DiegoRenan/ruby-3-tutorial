# Prime Number
# Prime number is a number that is greater than 1 and divided by 1 or itself only.

def prime_number(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

puts "Enter a number to check if it is a prime number:"
n = gets.chomp.to_i
puts "#{n} is #{prime_number(n) ? 'prime' : 'not prime'}"
