def fat(n)
  return 1 if n < 2
  fat(n-1) * n
end

res = []
(1..100).each do |n|
  (1..100).each do |r|
     val = fat(n)/(fat(r)*(fat(n-r)))
     res << val if val >= 1000000
  end
end

puts res.length.inspect
# puts fat(23)/(fat(10)*(fat(23-10)))
