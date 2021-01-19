# Statistics for an Athletic Association

def stat(strg)
  def decode(s)
    time = s.split('|').map { |n| n.to_i }
    time[0] * 3600 + time[1] * 60 + time[2]
  end
  
  def encode(time)
    hours = format('%02d', time/3600)
    minutes = format('%02d', (time%3600)/60)
    seconds = format('%02d', time%60)
    "#{hours}|#{minutes}|#{seconds}"
  end
  
  results = strg.split(', ').map { |r| decode(r) }
  range = encode(results.max - results.min)
  mean = encode(results.sum / results.length)
  half_position = (results.length)/2
  results.sort!
  median = (results.length % 2 != 0) ? encode(results[half_position]) : encode((results[half_position] + results[half_position-1])/2)
  "Range: #{range} Average: #{mean} Median: #{median}"
end