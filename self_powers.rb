count = 0

(1..1000).each do |n|
  count += n ** n
end

puts count.to_s