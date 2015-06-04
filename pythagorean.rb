range = (1..999)
val = []
range.each do |a|
  (a..999).each do |b|
    (b..999).each do |c|
      next if (a + b + c) > 1000
      next if (a + b + c) < 1000
      next if (a**2 + b**2) != c**2
      val = [a, b, c]
    end
  end
end

puts val.inject(:*)