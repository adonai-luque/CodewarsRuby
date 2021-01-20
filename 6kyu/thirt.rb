# A Rule of Divisibility by 13

def thirt(n)
  factors = [1, 10, 9, 12, 3, 4]
  until n < 100 do 
    result = 0
    n
      .to_s.split('')
      .map { |d| d.to_i }
      .reverse
      .each_with_index do |d, i|
        result += d * factors[i%6]
      end
    n = result
  end
  n
end

p thirt(1234567)
