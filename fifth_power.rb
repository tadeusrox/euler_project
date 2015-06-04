res = []
(2..(9**6)).each do |n|
  res << n if n.to_s.chars.map(&:to_i).map{|n| n**5}.inject(:+) == n
end

puts res.inject(:+)