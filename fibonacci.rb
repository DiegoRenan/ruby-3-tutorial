require 'minitest/autorun'

# Fibonacci Sequence
# The Fibonacci sequence is a sequence of number in which each number is the sum of the two preceding ones. The sequence starts with 0 and 1.
# n+1 = n + n-1

def fibonacci(n)
  n <= 1 ? n : fibonacci(n-1) + fibonacci(n-2)
end

class TestFibonacci < Minitest::Test
  def test_fibonacci
    assert_equal 0, fibonacci(0)
    assert_equal 1, fibonacci(1)
    assert_equal 1, fibonacci(2)
    assert_equal 2, fibonacci(3)
    assert_equal 3, fibonacci(4)
    assert_equal 5, fibonacci(5)
  end
end
