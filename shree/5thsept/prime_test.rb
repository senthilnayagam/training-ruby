require "test/unit"
require "./prime.rb"

class Testprime < Test::Unit::TestCase
 
  def test_conversion
[2,3,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97].each do |prime|
    assert_equal(true, Prime.prime?(prime) )
end


    assert_equal(false, Prime.prime?(25) )
assert_equal(true, Prime.prime?(31) )
assert_equal(false, Prime.prime?(246) )
assert_equal(true, Prime.prime?(71) )
assert_equal(false, Prime.prime?(333) )
assert_equal(true, Prime.prime?(13) )
assert_equal(true, Prime.prime?(17) )
    
  end
end
