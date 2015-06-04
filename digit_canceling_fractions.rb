res = []
(1..9).each do |x|
  (1..9).each do |y|
    (1..9).each do |i|
      val = ((x.to_f * 10.0) + i.to_f)/((10.0 * i.to_f) + y)
      must = (x.to_f/y.to_f)
      if val == must
        res << ["#{((x.to_f * 10.0) + i.to_f)}/#{((10.0 * i.to_f) + y)}", "#{x.to_f}/#{y.to_f}"]
      end
    end
  end
end

puts res.inspect