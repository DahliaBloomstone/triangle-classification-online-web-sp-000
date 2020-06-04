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
# kind method
#  compute 2 validity tests
#  if all side lengths > 0, validity test 1 = true
#  then yield to method to test triangle inequality spec
#  sum of 2 sides > 3rd side; if true, continue with #kind method
#  output kind of triangle

def kind
      # first test for nonzero & nonnegative side lengths
      # and test for "triangle inequality" principle
if  (s1 <= 0 || s2 <= 0 || s3 <= 0) ||
(s1 >= s2 + s3 || s2 >= s1 + s3 || s3 >= s1 + s2)
begin
raise TriangleError
#rescue TriangleError => error
puts error.message
end
# if pass validity tests, determine kind of triangle
elsif s1 == s2 && s2 == s3
:equilateral
elsif s1 != s2 && s2 != s3 && s1 != s3
:scalene
elsif s1 == s2 || s2 == s3 || s1 == s3
:isosceles
end
end 

class TriangleError < StandardError
def message
"Not a valid triangle"
end
end

end
