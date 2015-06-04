(100000..166666).each do |n|
  next if n % 2 == 0 && n % 10 != 0
  next if n % 3 == 0 && (n % 10 <= 3 && n % 10 > 0)
  permutations  = n.to_s.chars.permutation.to_a.map{|m| m.inject(&:+) }.uniq
  next unless permutations.include?((n * 2).to_s)
  next unless permutations.include?((n * 3).to_s)
  next unless permutations.include?((n * 4).to_s)
  next unless permutations.include?((n * 5).to_s)
  next unless permutations.include?((n * 6).to_s)
  puts n
end
