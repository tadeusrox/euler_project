
def score(name)
  value = 0

  name.each_byte do |c|
    value += (c - 64)
  end
  value
end

names = File.open('p022_names.txt', "r").read.gsub("\"", '').split(',').sort!

res = 0
names.each_with_index do |name, i|
  res += score(name) * (i + 1)
end

puts res.inspect


