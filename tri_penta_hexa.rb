res = []

limit = 50000
t1 = Time.new

tri = []
penta = []
hexa = []

(286..limit).each do |n|
  hex = (n*(2*n - 1))
  tra = ((n*(n+1))/2)
  pen = ((n*((3*n)-1))/2)
  hexa << hex
  tri << tra if hexa.include?(tra)
  penta << pen if hexa.include?(pen)
end

res = ((tri & penta) & hexa)

puts "response #{Time.new - t1}"
t1 = Time.new

puts res.inspect
