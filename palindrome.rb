def is_palindrome?(num)
 return false if num.to_s.length % 2 != 0
 return false if num.to_s != num.to_s.reverse
 true
end

num = 0

(100..999).to_a.reverse.each do |n|
  (100..999).to_a.reverse.each do |m|
    next unless m * n > num
    next unless is_palindrome?(m * n)
    num = m * n
  end
end

puts num