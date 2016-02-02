class Quadrilateral
  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
  def perimeter
    @sides.reduce( :+ )
  end
  end
end

# Two sides of length1, two sides of length2
class Rectangle < Quadrilateral
  def initialize(side1, side2)
    @sides = [(side1 * 2), (side2 * 2)]
  end
end

# four sides all the same length.
class Square < Rectangle
  def initialize(side1)
    @sides = [side1 * 4]
  end
end

class Trapezoid < Quadrilateral
  def initialize(side1, side2, side3_4)
    @sides = [side1, side2, (side3_4 * 2)]
  end
end

# four sides all the same length, but not right angles. Diamond-shaped.
class Rhombus < Trapezoid
  def initialize(side1)
    @sides = [side1 * 4]
  end
end

def test
  quad = Quadrilateral.new(1,4,1,4)
  rectangle = Rectangle.new(1,2)
  trapezoid = Trapezoid.new(1,1,2)
  square = Square.new(1)
  rhombus = Rhombus.new(1)

  puts quad.perimeter == 10
  puts rectangle.perimeter == 6
  puts trapezoid.perimeter == 6
  puts square.perimeter == 4
  puts rhombus.perimeter == 4
end

test
