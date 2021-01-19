# Loose Change

def loose_change(cents)
  cents = 0 if cents < 0
  cents = cents.to_i
  
  coins = ['Quarters', 'Dimes', 'Nickels', 'Pennies']
  values = [25, 10, 5, 1]
  change = {}
  (0..3).each do |i|
    change[coins[i]] = cents / values[i]
    cents = cents % values[i]
  end
  return change.to_a.reverse.to_h
end