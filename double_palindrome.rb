def is_palindrome?(num)
 return false if num.to_s != num.to_s.reverse
 true
end

res = (1..1000000).map do |n|
  n if is_palindrome?(n) && is_palindrome?(n.to_s(2))
end

puts res.compact.inject(:+).inspect