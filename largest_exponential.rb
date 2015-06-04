values = File.open("p099_base_exp.txt", "r") { |file|  file.read }.split
great = [0, 0]
line  = 0
t = Time.new

values.each do |n|
  line += 1
  n = n.split(',')
  val = 1
  mul = n[1].to_i
  t = Time.new

  val = mul * Math.log(n[0].to_i)
  great = [val, line] if great[0] < val
end

# puts (10 ** 10001) - (mul(10, 10001))

puts great.inspect
