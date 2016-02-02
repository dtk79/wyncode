### example done in class with Jose^2

class Quadrilateral
  def initialize(side1, side2, side3, side4)
    @sides = [side1, side2, side3, side4]
  end

  def perimiter
    sum = 0
    @sides.each do | num |
      sume += num
    end
    sum
  end
end

# Two sides of length1, two sides of length2
class Rectangle < Quadrilateral
  def initialize(side1, side2)
    @sides = [side1, side2, side1, side2]
  end
end

# four sides all the same length.
class Square < Rectangle
  def initialize(side1)
    @sides = [side1, side1, side1, side1]
  end
end

class Trapezoid < Quadrilateral
  def initialize(side1, side2, side3_4)
    @sides = [side1, side2, side3_4, side3_4]
  end
end

# four sides all the same length, but not right angles. Diamond-shaped.
class Rhombus < Trapezoid
  def initialize(length)
    @sides = [side1, side1, side1, side1]
  end
end


def test
  squa = Square.new
  puts squa.is_a? Rectangle
  puts squa.is_a? Quadrilateral

  rect = Rectangle.new
  puts rect.is_a? Quadrilateral
  puts not(rect.is_a? Trapezoid)
end

test
