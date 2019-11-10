class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a == @b && @c
      :equilateral
    elsif @b==@c || @a==@b || @c==@a # (@a == @b && @b != @c) || (@a != @b && @c == @a) || (@c == @b && @c != @a )
      :isosceles
    end
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
end
