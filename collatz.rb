length = 0

class Collatz
  def self.cache
    @cache ||= {1 => 1}
  end

  def self.collatz(num)
    return 1 if num == 1
    return cache[num] if cache[num]

    val = []
    if num % 2 == 0
      val = cache[num/2] ?  cache[num/2] : 1 + collatz(num/2)
    else
      val = cache[3* num + 1] || 1 + collatz(3 * num + 1)
    end
    cache[num] = val
    cache[num]
  end

  def self.res
    sol = []
    length = 0
    1.upto(999999).each do |n|
      next if cache[n]
      cache[n] = cache[n] || collatz(n)
      val = cache[n]
      if val > length
        sol = [n, val]
        length = val
      end
    end
    puts [sol].inspect
  end
end

Collatz.res
