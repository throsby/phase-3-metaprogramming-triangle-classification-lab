class Triangle
  def initialize(leg1, leg2, leg3)
    if (leg1 > 0 && leg2 > 0 && leg3 > 0)
      @leg1 = leg1
      @leg2 = leg2
      @leg3 = leg3
    else
      begin
        raise TriangleError
      end
    end
    
  end

  def kind
    if !(@leg1 + @leg2 > @leg3 && @leg2 + @leg3 > @leg1 && @leg1 + @leg3 > @leg2)
      begin
        raise TriangleError
      end
    end
    if (@leg1 == @leg2 && @leg2 == @leg3)
      :equilateral  
    elsif (@leg1 == @leg2 || @leg2 == @leg3 || @leg1 == @leg3)
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
    def message
      "A triangle must be instantiated with three legs that have a length greater than 0"
    end
  end
end
