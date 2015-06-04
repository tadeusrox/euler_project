
def pentagon(n)
  (3*(n**2) - n)/2
end

def inverse(n)
  ((1 + Math.sqrt((24 * n + 1)))/6).to_f
end

res = []


pentagons = []
res = []
(1..3000).each do |n|
  (n..3000).each do |m|
    pn = pentagon(n)
    pm = pentagon(m)
    next unless inverse(pn + pm) % 1 == 0
    res << [pn , pm] if inverse((pn - pm).abs) % 1 == 0
  end
end

puts res.map{|n| (n[0] - n[1]).abs}.inspect