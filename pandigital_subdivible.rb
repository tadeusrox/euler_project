require 'prime'

def is_pandigital?(n)
  n.chars.length == n.chars.uniq.length
end

t1 = Time.new


res = []
# (1234567890..9876543210).each do |n|
#   if n % 1000000 == 1
#     puts "#{n} #{Time.new-t1}"
#     t1 = Time.new
#   end
#   v = n.to_s
#   next unless v[0..3].to_i % 2 == 0
#   next unless v[2..4].to_i % 3 == 0
#   next unless v[3..5].to_i % 5 == 0
#   next unless v[4..6].to_i % 7 == 0
#   next unless v[5..7].to_i % 11 == 0
#   next unless v[6..8].to_i % 13 == 0
#   next unless v[7..9].to_i % 17 == 0
#   next unless is_pandigital?(n.to_s)
#   res << [n]
# end
res = []
(1..9).each do |n1|
  (0..9).each do |n2|
    next if n1 == n2
    (0..9).each do |n3|
      next if [n1,n2].include?(n3)
      (0..9).each do |n4|
        next if [n1,n2,n3].include?(n4)
        next unless "#{n2}#{n3}#{n4}".to_i % 2 == 0
        (0..9).each do |n5|
          next if [n1,n2,n3,n4].include?(n5)
          next unless "#{n3}#{n4}#{n5}".to_i % 3 == 0
          (0..9).each do |n6|
            next if [n1,n2,n3,n4,n5].include?(n6)
            next if "#{n4}#{n5}#{n6}".to_i % 5 == 0
            (0..9).each do |n7|
              next if [n1,n2,n3,n4,n5,n6].include?(n7)
              next unless "#{n5}#{n6}#{n7}".to_i % 7 == 0
              (0..9).each do |n8|
                next if [n1,n2,n3,n4,n5,n6,n7].include?(n8)
                next unless "#{n6}#{n7}#{n8}".to_i % 11 == 0
                (0..9).each do |n9|
                  next if [n1,n2,n3,n4,n5,n6,n7,n8].include?(n9)
                  next unless "#{n7}#{n8}#{n9}".to_i % 13 == 0
                  (0..9).each do |n10|
                    next if [n1,n2,n3,n4,n5,n6,n7,n8,n9].include?(n10)
                    next unless "#{n8}#{n9}#{n10}".to_i % 17 == 0
                    num = "#{n1}#{n2}#{n3}#{n4}#{n5}#{n6}#{n7}#{n8}#{n9}#{n10}"
                    res << num.to_i
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

puts (res.uniq.inject(&:+) - 16695334890).inspect