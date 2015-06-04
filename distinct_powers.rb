res = (2..100).map do |n|
  (2..100).map do |b|
    n ** b
  end
end.flatten.uniq.count

puts res