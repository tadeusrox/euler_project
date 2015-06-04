numbers = [5,7,9,11,16,13,17,19]
biggest = numbers.inject(:*)

(2..20).each do |n|
  puts [n, biggest % n].inspect
end
puts [biggest].inspect