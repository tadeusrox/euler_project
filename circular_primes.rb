require 'prime'
primes = Prime.first(78498)

def rotate(n)
  last = n.to_s
  (0..n.to_s.length-1).map do |n|
    frchar = last.chars.first
    last = last[1..last.to_s.length] + frchar
    last
  end
end

def allprimes?(arr)
  arr.all? {|n| Prime.prime? n }
end

def has_even?(n)
  return false if n == 2
  n.to_s.chars.any? { |n| n.to_i % 2 == 0}
end

res = primes.map do |n|
  next if has_even?(n)
  n if allprimes?(rotate(n).map(&:to_i))
end.compact

puts res.length.inspect