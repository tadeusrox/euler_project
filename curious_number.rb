@cache = {}

def fat(n)
  return 1 if n < 2
  @cache[n-1] = fat(n-1) unless @cache[n-1]
  @cache[n-1] * n
end

def sum_fat(n)
  n.to_s.chars.map(&:to_i).map do |n|
    unless @cache[n]
      @cache[n] = fat(n)
    end
    @cache[n]
    # fat(n)
  end.inject(:+)
end

res = []
2000000.downto(3).each do |n|
  res << n if sum_fat(n) == n
end

puts res.inject(:+)
