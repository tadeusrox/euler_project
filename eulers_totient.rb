def divisors(n)
  max = n
  min = 1
  divisors = []
  while max >= min
    if min % n == 0
      max = max / min
      divisors << min
      divisors << max
      min += 1
    end
  end
  divisors - [1, n]
end

def relatives(n)
  ret = [1, n]
  (2..n-1).each do |p|
    ret += (divisors(p))
  end
  ret
end

(1..10).each do |n|
  rel = relatives(n)
  puts [n, relatives(n), rel.inject(&:+).to_f/n.to_f].inspect
end
