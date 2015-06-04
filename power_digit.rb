res = []
(1..9).each do |n|
  (1..1000).each do |p|
    v = n ** p
    # size = p.to_s.length
    res << v if v.to_s.length == p
  end
end

puts res.length