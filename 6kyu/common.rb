# Common array elements

def common(a,b,c)
  counter_a = Hash.new(0)
  counter_b = Hash.new(0)
  counter_c = Hash.new(0)
  a.each do |e|
    counter_a[e] = counter_a[e] + 1
  end
  b.each do |e|
    counter_b[e] = counter_b[e] + 1
  end
  c.each do |e|
    counter_c[e] = counter_c[e] + 1
  end
  result = 0
  counter_a.keys.each do |k|
    result += k * [counter_a[k], counter_b[k], counter_c[k]].min
  end
  result
end