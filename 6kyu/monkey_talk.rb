# Monkey Talk

def monkey_talk(phrase)
  phrase.downcase.split.map { |w| 'aeiou'.include?(w[0]) ? 'eek' : 'ook' }.join(' ').capitalize + '.'
end