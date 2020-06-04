class Triangle
#Triangle class with three arguments on initialization, each argument is a length of one of three sides of a triangle.
  def initialize(side1, side2, side3)
    @sides = [] #creates a new array of triangle sides
    @sides << side1 #triangle side 1 will be shovelled into new array of triangle sides 
    @sides << side2
    @sides << side3
  end

#instance method kind that returns, as a symbol, its type.
  def kind
    if valid?
      if @sides.uniq.length == 1 #knows that equilateral have equal sides
        return :equilateral
      elsif @sides.uniq.length == 2 #knows that isosceles have last two sides equal
        return :isosceles
      else
        return :scalene #knows that scale have no equal sides
      end
    else
#raise custom error if triangle is invalid.
      raise TriangleError
    end
  end
  end

  #custom error class, TriangleError that inherits from StandardError
  class TriangleError < StandardError
  end

#define instance method valid? that returns if a triangle is valid.
  def valid?
    sum_one_two = @sides[0] + @sides[1]
    sum_one_three = @sides[0] + @sides[2]
    sum_two_three = @sides[1] + @sides[2]

    if (@sides.none? {|side| side <= 0}) &&
      (sum_one_two > @sides[2] && sum_one_three > @sides[1] && sum_two_three > @sides[0])
      return true
    else
      return false
    end
  end
