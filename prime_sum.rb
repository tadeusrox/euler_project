require 'prime'

res = []
primes = Prime.first(547) - [2, 3, 5]
prime = 0
while primes.length != 0 && prime == 0
  val = primes.inject(:+)
  prime = val if Prime.prime? val
  primes = primes - [primes.last]
end

puts prime
