res = Hash.new
t1 = Time.new
(0..1000).each do |a|
  if a % 10 == 0
    puts "#{a} #{Time.new - t1}"
    t1 = Time.new
  end
  (a..1000).each do |b|
    (b..1000).each do |c|
      next if a**2 + b**2 != c**2
      (1..1000).each do |n|
        res[n] ||= []
        res[n] << [a,b,c] if a+b+c == n
      end
    end
  end
end

puts res.map{|k, v| [k, v.length] }.sort_by {|v| v[1]}.inspect