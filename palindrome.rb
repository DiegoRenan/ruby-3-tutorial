require 'minitest/autorun'

# Palindrome
# Palindrome is a word that reads the same backward as forward.

def palindrome?(string)
  string.downcase == string.downcase.reverse
end

class Palindrome < Minitest::Test
  def test_palindrome
    assert_equal true, palindrome?('racecar')
    assert_equal false, palindrome?('hello')
    assert_equal true, palindrome?('Able was I ere I saw elba')
  end
end
