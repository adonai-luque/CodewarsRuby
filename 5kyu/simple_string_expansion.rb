# Simple String Expansion

def solve(s)
  acum = []
  result = ''
  for i in 0...s.length
    acum.push(s[i]) unless s[i] == '(' || s[i] == ')'
  end
  acum = acum.reverse
  acum.each do |c|
    if /^[1-9]$/.match(c)
      result = result * c.to_i
    else
      result = c + result
    end
  end
  result
end