class Cube
  def initialize
    @count = {}
    @first = {}
  end
  
  def cube5?(num)
    n = num.to_s.chars.sort {|a, b| b.to_i <=> a.to_i}.join.to_i
    if @count.has_key?(n)
      @count[n] += 1
    else
      @count[n] = 1
      @first[n] = num
    end
    @count[n] == 5
  end
  
  def first(num)
    @first[num.to_s.chars.sort {|a, b| b.to_i <=> a.to_i}.join.to_i]
  end
end

cube = Cube.new
i = 1
begin
  break if cube.cube5?(i ** 3)
end while (i += 1)
puts cube.first(i ** 3)