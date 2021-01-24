# Find the uniq number

def find_uniq(arr)
  def mode(arr)
    arr.each do |e|
      return e if arr.count(e) > 1
    end
  end
  equal_element = mode(arr.take(3))
  arr.delete(equal_element)
  arr.first
end