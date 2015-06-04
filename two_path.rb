matrix = []
File.open('p081_matrix.txt', "r").readlines.each do |n|
  matrix << (n.chars - [n.chars.last]).inject(&:+).split(',').map(&:to_i)
end

@calls = 0

@cache = Hash.new

def short(mat, x, y)
  @cache[x+1] ||= Hash.new
  @cache[x] ||= Hash.new
  if x == mat.length-1 && y == mat.length-1
    @cache[x][y] = mat[x][y]
    return @cache[x][y]
  end
  if x <= mat.length-2 && y == mat.length-1
    @cache[x][y] = mat[x][y] + (@cache[x+1][y] ||  short(mat, x+1, y))
    return @cache[x][y]
  end
  if x == mat.length-1 && y <= mat.length-2
    @cache[x][y] = mat[x][y] + (@cache[x][y+1] || short(mat, x, y+1))
    return @cache[x][y]
  end
  @cache[x+1][y] = @cache[x+1][y] || short(mat, x+1, y)
  @cache[x][y+1] = @cache[x][y+1] || short(mat, x, y+1)
  @cache[x][y] = @cache[x][y] || mat[x][y] + [@cache[x+1][y], @cache[x][y+1]].min
  @cache[x][y]
end

puts [short(matrix, 0, 0), @calls].inspect