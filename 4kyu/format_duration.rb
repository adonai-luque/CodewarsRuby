# Human readable duration format

def format_duration(seconds)
  return 'now' if seconds.zero?
  years = seconds / 31_536_000
  days = seconds % 31_536_000 / 86_400
  hours = seconds % 86_400 / 3_600
  minutes = seconds % 3_600 / 60
  seconds = seconds % 60
  years = years > 1 ? "#{years} years" : "#{years} year" * years
  days = days > 1 ? "#{days} days" : "#{days} day" * days
  hours = hours > 1 ? "#{hours} hours" : "#{hours} hour" * hours
  minutes = minutes > 1 ? "#{minutes} minutes" : "#{minutes} minute" * minutes
  seconds = seconds > 1 ? "#{seconds} seconds" : "#{seconds} second" * seconds
  expression = [years, days, hours, minutes, seconds].reject { |e| e == "" }
  expression.size > 1 ? expression[0..-2].join(", ") + " and " + expression[-1] : expression[-1]
end