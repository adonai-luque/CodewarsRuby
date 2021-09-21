# Uncollapse Digits

def uncollapse(s)
  s.scan(/zero|one|two|three|four|five|six|seven|eight|nine/).join(" ")
end