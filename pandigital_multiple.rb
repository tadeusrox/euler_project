def is_pandigital?(n)
  (["1", "2", "3", "4", "5", "6", "7", "8", "9"] - n.chars.uniq).length == 0
end

pandigitals = []
(9000..9999).each do |n|
  val = (n.to_s)+(2*n).to_s
  pandigitals << (n.to_s)+(2*n).to_s if is_pandigital?(val)
end

puts pandigitals.sort!.inspect