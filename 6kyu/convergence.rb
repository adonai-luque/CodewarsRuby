# Sequence convergence

def convergence(n)
  def product_of_non_zero_digits(number)
    product = 1
    number
      .to_s
      .split('')
      .select { |d| d != '0' }
      .each { |d| product *= d.to_i }
    product
  end
  base = [1]
  seeded = [n]
  until seeded.last == base.last
    until base.last >= seeded.last
      if base.last < 10
        base << (base.last * 2)
      else
        base << (base.last + product_of_non_zero_digits(base.last))
      end
    end
    until seeded.last >= base.last
      if seeded.last < 10
        seeded.append(seeded.last * 2)
      else
        seeded.append(seeded.last + product_of_non_zero_digits(seeded.last))
      end
    end
  end
  seeded.index(base.last)
end
