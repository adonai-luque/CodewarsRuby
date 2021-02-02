# Next bigger number with the same digits

def brute_next_bigger(n)
  l = n.to_s.length
  digits = n.to_s.split('')
  numbers = digits.permutation.to_a.uniq.map { |e| e.join.to_i }.sort
  if n == numbers.last
    return false
  else
    return numbers[numbers.index(n)+1]
  end
end

def next_bigger(n)
  return -1 if n.to_s.split('').sort.reverse.join.to_i == n
  l = n.to_s.length
  for i in (1..l) do
    tail = n % 10**i
    tail_next = brute_next_bigger(tail)
    if tail_next
      return n - (n % 10**i) + tail_next
    end
  end
end

n = 154
puts(next_bigger(n))

