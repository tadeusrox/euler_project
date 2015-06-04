def score(name)
  value = 0

  name.each_byte do |c|
    value += (c - 64)
  end
  value
end

tri = (1..100).map{|n| (1.0/2.0)*n*(n+1) }.map(&:to_i)

names = File.open('p042_words.txt', "r").read.gsub("\"", '').split(',').sort!.map { |n| score(n) }

count = 0
names.each do |name|
  count += 1 if tri.include?(name)
end

puts names.inspect
puts count.inspect
puts tri.inspect