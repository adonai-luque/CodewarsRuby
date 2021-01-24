# String array duplicates

def dup(arr)
  def single_dup(word)
    result = []
    word.chars.each do |c|
      result.append(c) if result == [] || result.last != c
    end
    result.join
  end
  arr.map { |word| single_dup(word) }
end