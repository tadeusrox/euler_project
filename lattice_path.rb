@cache = {}

def fat(n)
  return 1 if n < 2
  @cache[n-1] = fat(n-1) unless @cache[n-1]
  @cache[n-1] * n
end


def possible_paths(a,b)
  fat(a+b) / (fat((a+b)-b)*fat(b))
end

puts possible_paths(20, 20)