len = 0

def alldigitsdivide(n)
  res = []
  res << 10 % n
  (1..n+1).each do |a|
    res << res.last * 10 % n unless res.include?(res.last * 10 % n)
  end
  res
end


res = (1..999).map do |n|
  val = alldigitsdivide(n)
  [n, alldigitsdivide(n).length]
end.max_by(&:last)

puts res.inspect