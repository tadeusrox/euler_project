def human_number(n)
  case n
  when 0
    return ''
  when 1
    return 'one'
  when 2
    return 'two'
  when 3
    return 'three'
  when 4
    return 'four'
  when 5
    return 'five'
  when 6
    return 'six'
  when 7
    return 'seven'
  when 8
    return 'eight'
  when 9
    return 'nine'
  when 10
    return 'ten'
  when 11
    return 'eleven'
  when 12
    return 'twelve'
  when 13
    return 'thirteen'
  when 14
    return 'fourteen'
  when 15
    return 'fifteen'
  when 16
    return 'sixteen'
  when 17
    return 'seventeen'
  when 18
    return 'eighteen'
  when 19
    return 'nineteen'
  when 20..29
    return 'twenty' + human_number(n%10)
  when 30..39
    return 'thirty' + human_number(n%10)
  when 40..49
    return 'forty' + human_number(n%10)
  when 50..59
    return 'fifty' + human_number(n%10)
  when 60..69
    return 'sixty' + human_number(n%10)
  when 70..79
    return 'seventy' + human_number(n%10)
  when 80..89
    return 'eighty' + human_number(n%10)
  when 90..99
    return 'ninety' + human_number(n%10)
  when 100..999
    return human_number(n / 100)+'hundred' if n % 100 == 0
    return human_number(n / 100)+'hundredand'+human_number(n % 100)
  when 1000
    return 'onethousand'
  end
end


count = 0
(1..1000).each do |n|
  count += human_number(n).length
  puts [human_number(n),  human_number(n).length]
end
puts count