# Matrix Determinant

def minor(matrix, n)
  matrix.slice(1, matrix.size-1).map { |row| row.slice(0, n) + row.slice(n+1, row.size-n) }
end

def determinant(matrix)
  return matrix[0][0] if matrix.size == 1
  matrix.first.each_with_index.map { |e, i| (-1)**i * e * determinant(minor(matrix, i))}.sum
end