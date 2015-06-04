require 'prime'
t = Time.new
@cache = Hash.new
primes = Prime.first(12600)

def prime_factors(n, pri)
  num = n
  res = []

  if Prime.prime? n
    @cache[n] ||= [n]
    return @cache[n]
  end

  pri.each do |p|
    if num % p == 0
      @cache[num/p] ||= prime_factors((num/p), pri)
      return [p] + @cache[num/p]
    end
  end
end

def join(ar)
  has = Hash.new
  val = ar.map do |n|
    has[n] ||= 0
    has[n] += 1
  end
  val = has.map do |k, v|
    k ** v
  end
  val
end

puts "init #{Time.new - t}"
t = Time.new

res = Hash.new
(10..primes.last).each do |n|
  res[n] ||= []
  @cache[n] ||= prime_factors(n, primes)
  res[n] = join(@cache[n])
end
puts @cache.length.inspect

puts "calc #{Time.new - t}"
t = Time.new

num = 4
val = []
(10..res.length-(num-1)).each do |k|
  next unless res[k].length == num
  next unless res[k+1].length == num
  next unless res[k+2].length == num
  next unless res[k+3].length == num
  val << k if (res[k] + res[k+1] + res[k+2] + res[k+3]).uniq == (res[k] + res[k+1] + res[k+2] + res[k+3])
end

puts "finish #{Time.new - t}"
t = Time.new
# puts join([2,2,3,3,9]).inspect
puts val.first.inspect