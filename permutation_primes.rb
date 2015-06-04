require 'prime'
res = []


def binary_search?(ary, lower, upper, element)
   return false if lower > upper
   mid = (lower+upper)/2
   if (ary[mid] == element)
     element
   elsif (element < ary[mid])
     binary_search?(ary, lower, mid-1, element)
   else
     binary_search?(ary, mid+1, upper, element)
   end
end

t = Time.new
primes = Prime.take_while{|p| p < 10000}.sort
primes.each do |n|
  (1..(9999 - 2 * n)).each do |p|
    next if n + (2*p) > 10000
    next unless binary_search?(primes,0,primes.length-1,n+p)
    next unless binary_search?(primes,0,primes.length-1,(n+p+p))
    perm = n.to_s.chars.permutation.to_a.map {|n| n.inject(&:+)}.map(&:to_i).sort
    next unless binary_search?(perm,0,perm.length-1,n+p)
    next unless binary_search?(perm,0,perm.length-1,n+p+p)
    res << [n, n+p, n+p+p]
  end
end

puts res.inspect