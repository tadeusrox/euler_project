f = 196
t = Time.new


def is_palindrome?(num)
 return false if num.to_s != num.to_s.reverse
 true
end


res = (1..10000).map do |n|
  it = 0
  val = n + n.to_s.reverse.to_i
  while !is_palindrome?(val) && it < 50
    val += val.to_s.reverse.to_i
    it += 1
  end
  val unless it < 50
end

puts res.compact.length.inspect