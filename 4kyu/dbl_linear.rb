# Twice linear

def dbl_linear(n)
  u = Hash.new(0)
  u[1] = 1
  until u.size > 5 * n do # Why 5??????
    u.keys.each do |k|
      u[2 * k + 1] = 1 if u[2 * k + 1] = 0
      u[3 * k + 1] = 1 if u[3 * k + 1] = 0
    end  
  end
  u.keys.sort[n]
end