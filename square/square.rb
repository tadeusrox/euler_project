sum1 = (1..100).map { |n| n**2 }.inject(:+)
sum2 = (1..100).to_a.inject(:+) ** 2

puts sum2 - sum1