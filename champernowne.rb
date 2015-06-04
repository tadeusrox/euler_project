digit = ""
i = 1
size = 1

while digit.length < 1000000
  digit += i.to_s
  i += 1
end

puts i
puts digit[0].to_i * digit[9].to_i * digit[99].to_i * digit[999].to_i * digit[9999].to_i * digit[99999].to_i * digit[999999].to_i