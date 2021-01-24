# Snail

arr = [[1,2,3], [4,5,6], [7,8,9]]

def rotate(arr)
  arr.reverse.map { |row| row.reverse }
end

def right_down(arr)
  arr[0].slice(0, arr.size - 1) + arr.map { |row| row.last}
end

def smaller(arr)
  arr.slice(1, arr.size - 1).map { |row| row.slice(0, row.size - 1)}
end

def snail(arr)
  return arr[0] if arr.size == 1
  right_down(arr) + snail(rotate(smaller(arr)))
end

p snail(arr)