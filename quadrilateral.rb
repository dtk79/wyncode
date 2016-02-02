class Quadrilateral
end

class Rectangle < Quadrilateral
end

class Square < Rectangle
end

class Trapezoid < Quadrilateral
end

class Rhombus < Trapezoid
end

# tests
def test
  squa = Square.new
  puts squa.is_a? Rectangle
  puts squa.is_a? Quadrilateral

  rect = Rectangle.new
  puts rect.is_a? Quadrilateral
  puts not(rect.is_a? Trapezoid)

  trap = Trapezoid.new
  puts trap.is_a? Quadrilateral
  puts not(trap.is_a? Square)

  rhom = Rhombus.new
  puts rhom.is_a? Trapezoid
  puts not(rhom.is_a? Rectangle)
end

test
