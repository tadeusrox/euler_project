def dividers(n)
  down = 1
  up = n
  divisors = []
  while up > down
    if n % down == 0
      up = n / down
      divisors << up
      divisors << down
    end
    down += 1
  end
  divisors.uniq
end

def sum_dividers(n)
  (dividers(n) - [n]).inject(:+)
end

res = []
puts 'begin'
limit = 20162
(2..limit).each do |n|
  res << n if n < sum_dividers(n)
end

puts 'calc sum'
aaa = res.map do |n|
  res.map do |p|
    n + p if n + p <= limit
  end
end.flatten.compact.uniq

puts 'verify numbers off'
bbb = (1..limit).to_a - aaa

puts bbb.sort.uniq.inject(:+).inspect


