PRIMES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71,
73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173]

number = 600851475143
divisor = []

while(number != 1)
  (2..10000).each do |prime|
    next if number % prime != 0
    print [number % prime, prime].inspect
    number /= prime
    divisor << prime
  end
  puts [number,divisor].inspect
end