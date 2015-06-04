require 'prime'

class Triangle
  def self.dividers_count(n)
    down = 1
    up = n
    divisors = []
    while up > down
      if n % down == 0
        divisors << up
        divisors << down
        up = n / down
      end
      down += 1
    end
    divisors.uniq
  end

  def self.prime_factors(n)
    primes = Prime.first(200)
    # puts primes.inspect
    factors = []
    while n != 1
      f = primes.find {|p| n % p == 0}
      factors << f
      n /= f
    end
    factors
  end

  def self.triangle(n)
    ((1+n)*n)/2
  end

  def self.res
    count = 10000
    num = dividers_count(triangle(count)).count
    while  num < 1000
      num = dividers_count(triangle(count)).count
      # puts [count,triangle(count) ,num, ].inspect
      count += 1
    end
  end
end

Triangle.res
# puts Triangle.prime_factors(12375).inspect
# puts Triangle.dividers_count(12375).inspect