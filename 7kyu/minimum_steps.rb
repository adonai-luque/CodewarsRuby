# Minimum Steps (Array Series #6)

def minimum_steps(numbers, value)
  numbers.sort!
  sum = 0
  numbers.each_with_index do |n, index|
    sum += n
    return index if sum >= value
  end
end