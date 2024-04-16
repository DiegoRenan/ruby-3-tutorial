# Palindrome
# Palindrome is a word that reads the same backward as forward.

def palindrome?(string)
  string == string.reverse
end

puts "Enter a string to check if it is a palindrome:"
string = gets.chomp
puts "#{string} is #{palindrome?(string) ? 'palindrome' : 'not palindrome'}"