# The observed PIN

def get_pins(observed)
  adyacent = Hash.new(0)
  adyacent[0] = [0, 8]
  adyacent[1] = [1, 2, 4]
  adyacent[2] = [1, 2, 3, 5]
  adyacent[3] = [2, 3, 6]
  adyacent[4] = [1, 4, 5, 7]
  adyacent[5] = [2, 4, 5, 6, 8]
  adyacent[6] = [3, 5, 6, 9]
  adyacent[7] = [4, 7, 8]
  adyacent[8] = [5, 7, 8, 9, 0]
  adyacent[9] = [6, 8, 9]
  pins = observed.chars.map { |c| adyacent[c.to_i] }
  pins_combined = pins[0].product(*pins[1..-1]).map { |p| p.join }
end
