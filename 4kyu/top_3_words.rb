# Most frequently used words in a text

def top_3_words(text)
  text_hash = Hash.new(0)
  text
    .scan(/[a-zA-Z]+'?[a-zA-Z]*/)
    .each { |w| text_hash[w.downcase] += 1 }
  text_hash
    .sort_by { |k, v| v }
    .reverse
    .take(3)
    .map { |e| e[0] }
end