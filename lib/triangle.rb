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
    elsif @b==@c || @a==@b || @c==@a 
      :isosceles
    elsif @a <= 0 || @b <= 0 || @c <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @a >= @b+@c || @c >= @b+@a || @b >= @a+@c
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "invalid"
    end
  end
end
