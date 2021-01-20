# Count the divisible numbers

def divisible_count(x, y, k)
  new_y = y / k * k
  new_x = x % k == 0 ? x : x / k * k + k
  (new_y - new_x) / k + 1
end