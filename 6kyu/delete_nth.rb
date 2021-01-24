# Delete occurrences of an element if it occurs more than n times

def delete_nth(order,max_e)
  count_order = Hash.new(0)
  new_order = []
  order.each do |e|
    new_order.append(e) if count_order[e] < max_e
    count_order[e] += 1
  end
  new_order
end
