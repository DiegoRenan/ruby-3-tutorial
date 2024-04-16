require 'minitest/autorun'

# Prime Number
# Prime number is a number that is greater than 1 and divided by 1 or itself only.

def prime_number(n)
  return false if n <= 1
  (2..Math.sqrt(n)).none? { |i| n % i == 0 }
end

class TestPrimeNumber < Minitest::Test
  def test_prime_number
    assert_equal false, prime_number(0)
    assert_equal false, prime_number(1)
    assert_equal true, prime_number(2)
    assert_equal true, prime_number(3)
    assert_equal false, prime_number(4)
    assert_equal true, prime_number(5)
    assert_equal false, prime_number(6)
    assert_equal true, prime_number(7)
  end
end
