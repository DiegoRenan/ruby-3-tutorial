# Factorial of a Number
# n! = n * (n-1) * (n-2) * ... * 1

def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end

puts "Enter a number to find its factorial:"
n = gets.chomp.to_i
puts "Factorial of #{n} is #{factorial(n)}"
