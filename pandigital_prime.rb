require 'prime'
def is_pandigital?(n)
  n.chars.length == n.chars.uniq.length
end

t1 = Time.new


primes = Prime.first(3)

(1000000..10000000).each do |n|
  next if primes.any? { |v| n % v == 0}
  if n % 100000 == 1
    puts "#{n} #{Time.new-t1}"
    t1 = Time.new
  end
  next if n.to_s.chars.include?('0')
  next if n.to_s.chars.include?('9')
    next if n.to_s.chars.include?('8')
  next unless is_pandigital?(n.to_s)
  next unless Prime.prime?(n)
  puts ["PAN", n].inspect if is_pandigital?(n.to_s)
end