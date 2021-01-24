# Detect Pangram

def panagram?(string)
  string.downcase!
  ('a'..'z').each do |letter|
    return false unless string.include?(letter)
  end
  true
end
