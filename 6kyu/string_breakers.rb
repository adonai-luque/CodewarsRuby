# String Breakers

def string_breakers(n, st)
  st
    .delete(' ')
    .split('')
    .each_slice(n)
    .map { |slice| slice.join('') }
    .join("\n")
end