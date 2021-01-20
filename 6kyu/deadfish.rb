# Make the Deadfish swim

def parse(data)
  value = 0
  result = []
  data.chars.each do |c|
    case c
    when 'i' then value += 1
    when 'd' then value -= 1
    when 's' then value = value**2
    when 'o' then result << value
    end
  end
  result
end