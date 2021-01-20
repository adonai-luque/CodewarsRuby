# Simple Fun #132: Number Of Carries

def number_of_carries(a, b)
  a = a.to_s.split('').map { |d| d.to_i}.reverse
  b = b.to_s.split('').map { |d| d.to_i}.reverse
  c = []
  (1..[a.size, b.size].max).each do |i|
    n = 0
    n += a[i-1] if i <= a.size
    n += b[i-1] if i <= b.size
    c.append(n)
  end
  (2..c.size).each { |i| c[i-1] += 1 if c[i-2] >= 10 }
  p c
  c.count { |e| e >= 10 }
end