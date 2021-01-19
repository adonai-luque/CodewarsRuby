# Error correction #1 - Hamming Code

def encode(s)
  s
    .split('')
    .map { |c| format('%08d', c.ord.to_s(2)).split('').map { |n| n * 3}.join('') }
    .join('')
end

def decode(bits)
  bits
    .scan(/.../)
    .map { |t| t.count('1') > 1 ? '1' : '0' }
    .each_slice(8)
    .to_a
    .map { |b| b.join('').to_i(2).chr }
    .join('')
end