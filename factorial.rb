require 'minitest/autorun'

# Factorial of a Number
# n! = n * (n-1) * (n-2) * ... * 1

def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end

class TestFactorial < Minitest::Test
  def test_factorial
    assert_equal 1, factorial(0)
    assert_equal 1, factorial(1)
    assert_equal 2, factorial(2)
    assert_equal 6, factorial(3)
    assert_equal 24, factorial(4)
    assert_equal 120, factorial(5)
  end
end
