require 'prime'

def truncate(n)
  last = n.to_s
  left = (0..n.to_s.length-1).map do |n|
    last = last[1..last.to_s.length]
    last
  end

  last = n.to_s
  right = (0..n.to_s.length-1).map do |n|
    last = last.slice(0..last.to_s.length-2)
    last
  end
  (left+right+[n.to_s]).uniq.compact - [""]
end

def allprimes?(arr)
  arr.all? {|n| Prime.prime? n }
end

res = []
# while res.length != 11
# end

Prime.first(59500).each do |n|
  next if n < 10
  res << n if allprimes?(truncate(n).map(&:to_i))
end

puts res.inject(:+).inspect