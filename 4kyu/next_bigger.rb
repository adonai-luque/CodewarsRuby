# Next bigger number with the same digits

def reverse_two_at(n, i)
  number = n.to_s
  number = number.slice(0, i) + number.slice(i, 2).reverse + number.slice(i+2, number.length-i-2)
  number.to_i
end

def next_bigger(n)
  if n < reverse_two_at(n, n.to_s.length-2)
    return reverse_two_at(n, n.to_s.length-2)
  elsif n.to_s.length == 2
    return -1
  else
    return reverse_two_at(n, n.to_s.length-3)
  end
end

p reverse_two_at(12, )

####### UNFINISHED #######