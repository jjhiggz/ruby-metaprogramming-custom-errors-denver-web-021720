require 'pry'
class Triangle

  def initialize(a,b,c)
  @array = [a,b,c].sort
  end

  def isc
    @array[1] == @array[0]|| @array[2]==@array[1] ? true : false
  end
  def eq
    @array[1] == @array[0] && @array[1]==@array[2]
  end
  def sc
    @array[0]>@array[1]+@array[2]
  end
  def triangleType
    if eq == true
      "equalateral"
    elsif isc == true
      "iscoseles"
    elsif sc ==true
      "scalene"
    else
      undefined
    end
    
  end

  class TriangleError < StandardError
    def message
      "fuck shit shit fuck, ball: sac, nuts, chees"
    end
  end
end

a = Triangle.new(1,1,1)
b = Triangle.new(1,2,2)
c = Triangle.new(1,2,99999)
binding.pry
