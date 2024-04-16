# Fibonacci Sequence
# The Fibonacci sequence is a sequence of number in which each number is the sum of the two preceding ones. The sequence starts with 0 and 1.
# n+1 = n + n-1

def fibonacci(n)
  n <= 1 ? n : fibonacci(n-1) + fibonacci(n-2)
end

puts "Enter a number to find its fibonacci sequence:"
n = gets.chomp.to_i
puts "Fibonacci sequence of #{n} is #{fibonacci(n)}"