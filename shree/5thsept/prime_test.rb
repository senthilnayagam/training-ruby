require "test/unit"
require "./prime.rb"

class Testprime < Test::Unit::TestCase
 
  def test_conversion
    assert_equal(true, Prime.primeno(17) )
    assert_equal(false, Prime.primeno(25) )
    
  end
end
