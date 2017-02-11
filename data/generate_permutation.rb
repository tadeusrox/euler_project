write = File.open('permutations_write', 'w')
permutations = File.read('permutations_read') rescue nil
permutations ||= Hash.new



cubic = (345..6000).map {|n| n ** 3 }

hash = Hash.new

hash = hash.merge(permutations)

cubic.reverse_each do |n|
	puts n
	hash[n] = "#{n}".chars.permutation.map {|number| number.join.to_i }.uniq
end

write.puts hash.to_s

write.close