def get_max_val(spiral)
  spiral.values.map do |v|
    v.values
  end.flatten.uniq.compact.max
end

def calc_diagonals(n)
  return 1 if n == 0
  return 16*(n**2) + 4*n + 4 + calc_diagonals(n-1)
end


puts calc_diagonals(500).inspect