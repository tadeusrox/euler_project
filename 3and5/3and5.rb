def sum_number(range)
  (0..range-1).inject do |a, b|
    (b % 3 == 0) || (b % 5 == 0) ? a += b : a
  end
end

puts sum_number(1000)