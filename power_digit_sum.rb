res = []
(1..100).each do |a|
  (1..100).each do |b|
    res << (a ** b).to_s.chars.map(&:to_i).inject(:+)
  end
end

puts res.max