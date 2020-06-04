require 'pry'
class Triangle
#3 sides of a triangle:
attr_accessor :side1, :side2, :side3

#initialize with three arguments:
def initialize(side1, side2, side3)
@side1 = side1
@side2 = side2
@side3 = side3
end

#define instance method kind that returns, as a symbol, its type:
def kind
if (side1 <= 0 || side2 <= 0 || side3 <= 0) || (side1 >= side2 + side3 || side2 >= side1 + side3 || side3 >= side1 + side2)
#first: test if all sides are less than 0 or = to 0
#second: triangle inequality principle
#The sum of two sides are greater than one side, continue with the method
begin
raise TriangleError #Error if triangle inequality or negative sides or no sides
#rescue TriangleError => error
puts error.message #error message below
end
#if pass validity tests, determine kind of triangle
elsif side1 == side2 && side2 == side3 #equal sides
:equilateral
elsif side1 == side2 || side2 == side3 || side1 == side3
:isosceles
elsif side1 != side2 && side2 != side3 && side1 != side3 #
:scalene

end
end

class TriangleError < StandardError
def message
"Not a valid triangle"
end
end

end
