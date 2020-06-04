class Triangle
#Triangle class with three arguments on initialization, each argument is a length of one of three sides of a triangle. 
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
  end

  def kind
    if valid?
      if @sides.uniq.length == 1
        return :equilateral
      elsif @sides.uniq.length == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end
  end



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

class TriangleError < StandardError

end
