# require 'bigdecimal'
dem = 2
num = 3
ret = []
count = 0
(1..1000).each do |n|
  num = dem + (num + dem)
  dem = num - dem
  count += 1 if num.to_s.length > dem.to_s.length
end

puts count