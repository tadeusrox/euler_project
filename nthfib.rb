@cache = {1 => 1, 2 => 2, 3 => 3}

def fib(n)
  return n if n < 3
  prox1 = @cache[n-1] || fib(n-1)
  @cache[n-1] = prox1

  prox2 = @cache[n-2] || fib(n-2)
  @cache[n-2] = prox2

  prox1 + prox2
end

n = 1

while fib(n) < 10 ** 999
  n += 1
end

puts [fib(n).to_s.length, n].inspect
