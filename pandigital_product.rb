res = []
t1 = Time.new
(1..2000).each do |n1|
  if n1 % 100 == 0
    puts "#{n1} #{Time.new - t1}"
    t1 = Time.new
  end
  next if n1.to_s.length != n1.to_s.chars.uniq.length
  (n1..2000).each do |n2|
    mul = n1*n2
    smul = (n1*n2).to_s
    val = n1.to_s + n2.to_s + smul
    # next if smul.length > 9
    # next if smul.length != smul.chars.uniq.length
    next if val.length != 9
    next if (["1", "2", "3", "4", "5", "6", "7", "8", "9"] - val.chars.uniq).length != 0
    res << [mul, n1, n2]
  end
end

puts res.inspect
puts res.map(&:first).uniq.inject(:+).inspect