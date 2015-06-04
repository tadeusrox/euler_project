t1 = Time.new
def square_digits(n)
  n.to_s.chars.map{|v| v.to_i ** 2}.inject(&:+)
end

c89 = 0
cache = Hash.new

trd = []

(0..3).each do |b|
  trd << Thread.new do
    ((b*2500000 + 1)..((b+1)*2500000)).each do |n|
      num = cache[n] || n

      track = []
      while num != 1 && num != 89
        track << num
        num = cache[num] || square_digits(num)
      end

      track.each {|t| cache[t] = num }
      cache[n] = num

      c89 += 1 if num == 89
    end
  end
end

trd.each {|t| t.join }

puts c89