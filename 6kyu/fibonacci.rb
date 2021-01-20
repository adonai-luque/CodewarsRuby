# Complete Fibonacci Series

def fibonacci(n)
  return [] unless n >= 0
  result = [0, 1]
  (2..n).each do |i|
    result.append(result[i-1]+result[i-2])
  end
  result[0...n]
end