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
(2..10000).each do |n|
  a = sum_dividers(n)
  res << n if n == sum_dividers(sum_dividers(n)) && n != sum_dividers(n)
end

puts res.inspect
puts res.inject(:+).inspect

# puts dividers(220).inspect
# puts sum_dividers(220).inspect
# puts sum_dividers(sum_dividers(220)).inspect