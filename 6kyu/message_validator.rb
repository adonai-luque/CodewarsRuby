# Message Validator

def valid?(message)
  message
    .scan(/(\d+)([a-zA-Z]*)/)
    .all? { |group| group[1].length == group[0].to_i}
end

p valid?("3hey5hello2hi")
p valid?("4code13hellocodewars")
p valid?('3hey5hello2hi5')
p valid?("code4hello5")
p valid?("1a2bb3ccc4dddd5eeeee")
p valid?("")