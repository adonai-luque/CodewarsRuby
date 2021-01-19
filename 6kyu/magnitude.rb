# Magnitude

def sqr_modulus(z)
  return [false, -1, 1] unless z[1..-1].all? { |number| number.is_a? Integer }
  
  sum = 0
  case z[0]
  when 'cart'
    for i in (1...z.length).step(2)
      sum += z[i]*z[i] + z[i+1]*z[i+1]
    end
  when 'polar'
    for i in (1...z.length).step(2)
      sum += z[i]*z[i]
    end
  else
    return [false, -1, 1]
  end
  third = sum.to_s.split('').sort.reverse.join('').to_i
  return [true, sum, third]
end