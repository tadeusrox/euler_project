require 'prime'

t = Time.new

lim = 10000
odds = []

primes = Prime.first(lim/2)

puts "primes #{Time.new - t}"
t = Time.new

odds = (1..(lim/2)).map do |n|
  (2*n + 1)
end

puts "odds #{Time.new - t}"
t = Time.new

res = (0..lim/2).map do |n|
  primes.map do |p|
    p + 2*(n**2)
  end
end.flatten.compact

puts "hits #{Time.new - t}"
t = Time.new

puts (odds - res).min.inspect
