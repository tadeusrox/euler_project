def fib(n)
  return n if n < 3
  fib(n-2) + fib(n-1)
end

count = 0
even = 0
while(fib(count) < 4_000_000)
  even += fib(count) if fib(count) % 2 == 0
  puts [fib(count), count, even].inspect
  count += 1
end

puts even