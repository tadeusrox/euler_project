require 'bigdecimal'

(1..72).each do |n1|
  (1..72).each do |n2|
    if n1 * n2 == 144
      puts "#{n1}x#{n2}"
    end
  end
end
