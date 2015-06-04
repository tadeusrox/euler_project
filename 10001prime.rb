count  = 9
primes = [2, 3, 5, 7]

def is_prime?(num, primes)
  return false if is_divisible_by?(num, primes)
  true
end

def is_divisible_by?(num, range)
  range.to_a.any? do |n|
    num % n == 0
  end
end

while primes.length != 10001
  primes << count if is_prime?(count, primes)
  count += 2
end

puts primes.last.inspect