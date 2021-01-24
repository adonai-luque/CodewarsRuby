# Pete, the baker

def cakes(recipe, available)
  cakes_made = 0
  available_aux = Hash.new(0)
  available.keys.each do |ing|
    available_aux[ing] = available[ing]
  end
  loop do
    recipe.keys.each do |ing|
      if available_aux[ing] < recipe[ing]
        return cakes_made
      else
        available_aux[ing] -= recipe[ing]
      end
    end
    cakes_made += 1
  end
end