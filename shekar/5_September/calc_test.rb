#Test class for calculator
require "test/unit"
require "./calc"

class Calc_Test < Test::Unit::TestCase
  def Calc_add
   assert_equal(3, Calc.add(1,2))
   assert_equal(9, Calc.add(1,2))
  end
  def Calc_sub
   assert_equal("-1", Calc.sub(1,2))
   assert_equal("5", Calc.sub(7,2))
  end
  def Calc_mul
   assert_equal("2", Calc.mul(1,2))
   assert_equal("14", Calc.smul(7,2))
  end
  def Calc_div
   assert_equal("2", Calc.mul(4,2))
   assert_equal("5", Calc.smul(25,5))
  end
end
