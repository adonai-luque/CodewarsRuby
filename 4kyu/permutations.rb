def permutations(string)
  string.chars.permutation.to_a.map{ |e| e.join }.uniq
end

p permutations('aabb')