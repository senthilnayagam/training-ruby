#Test class for calculator
require "test/unit"
require "./calc"

class Calc_Test < Test::Unit::TestCase
  def Calc_add
   assert_equal(3, Calc.add(1,2))
   assert_equal(9, Calc.add(1,2))
  end
  def Calc_sub
   assert_equal("True", Calc.sub(1,2))
   
  end
  
end
