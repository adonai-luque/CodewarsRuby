# Sum by Factors

require 'prime'

def sumOfDivided(lst)
  divisors = Hash.new(0)
  lst.each do |e|
    divisors[e] = Hash.new(0)
    (1..e.abs).each do |n|
      divisors[e][n] = 1 if e % n == 0 && n.prime?
    end
  end
  divisors_array = []
  divisors.each { |d| divisors_array += d[1].keys}
  sum_of_divided = []
  divisors_array.uniq.each do |d|
    sum_of_divided.append([d, lst.select { |k| divisors[k][d] == 1 }.sum])
  end
  sum_of_divided.sort_by { |e| e.first }
end
