response = 0

initial_num = 4
array = [initial_num]


def next_step(array, initial_num)
  return false if array.size == initial_num
  return [initial_num-1, 1] if array.size == 1
  dup_array = array.dup
  index = 0
  changed = false
  while(!changed)
    puts index
    if (index == dup_array.size-1)
      break
    elsif dup_array[index] > dup_array[(index+1)..dup_array.size].inject(:+)
      dup_array[index+1] += 1
      dup_array[index] -= 1
      break
    elsif (dup_array[index] <= dup_array[(index+1)..dup_array.size].inject(:+))
      dup_array[index+1] -= 1
      dup_array[index+2] = 1
      break
    end
    index += 1
  end

  puts dup_array.inspect
  dup_array
end

while(array.size != initial_num)
  response += 1
  array = next_step(array, initial_num)
end

puts response
