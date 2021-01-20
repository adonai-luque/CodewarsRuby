# Your order, please

def order(words)
  words
    .split
    .sort_by { |word| word.scan(/\d+/).first.to_i }
    .join(' ')
end

p order("is2 Thi1s T4est 3a")
p order("4of Fo1r pe6ople g3ood th5e the2")
p order("")