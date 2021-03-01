class Triangle
  attr_accessor :first_length, :seconed_length, :third_length

  def initialize(first_length , seconed_length , third_length )
    @first_length = first_length
    @seconed_length = seconed_length
    @third_length = third_length    
  end

  def kind
    if @first_length + @seconed_length <= @third_length || @first_length + @third_length <= @seconed_length || @seconed_length + @third_length <= @first_length
      raise TriangleError   
    else
      if @first_length == @seconed_length && @seconed_length == @third_length
        :equilateral
      elsif @first_length == @seconed_length || @seconed_length == @third_length || @first_length == @third_length
        :isosceles
      else
        :scalene
      end  
    end
  end

  class TriangleError < StandardError
  end
end
