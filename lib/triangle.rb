class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    @a, @b, @c = [@a, @b, @c].sort
    # raise TriangleError if @a <= 0 or @a + @b <= @c
    # return :equilateral if @a == @c
    # return :isosceles if @a == @b or @b == @c
    # return :scalene
    if @a == @c
      :equilateral
    elsif @a == @b || @b == @c 
      :isosceles
    elsif @a <= 0 || @a + @b <= @c
      raise TriangleError
    else 
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "invalid"
    end
  end
end
