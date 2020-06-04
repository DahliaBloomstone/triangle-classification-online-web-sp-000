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
if (s1 <= 0 || s2 <= 0 || s3 <= 0) ||
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
