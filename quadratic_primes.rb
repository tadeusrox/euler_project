res = []
max_val = 0
require 'prime'

def formula(a, b, n)
  (n * n) + (a * n) + b
end

def weak?(a, b, count)
  (0..count).each do |n|
    return false unless Prime.prime? formula(a, b, n)
  end
  true
end

def number_of_primes(a, b)
  val = 0
  while Prime.prime? formula(a, b, val)
    val += 1
  end
  val
end

def primes
end

count = 0
(1000).downto(-1000).each do |a|
  # print "#{a} "
  Prime.first(168).each do |b|
    next unless Prime.prime? b
    next unless Prime.prime? formula(a, b, 0)
    next unless weak?(a, b, count)
    # next unless number_of_primes(a, b) > count
    count = number_of_primes(a, b)
    puts [count, a, b].inspect
    val = (1..count).map {|n| formula(a, b, n) }
    res = [val, a, b, count]
  end
end


puts res.inspect
puts res[1] * res[2]