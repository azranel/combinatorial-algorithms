class Integer
  def !
    (1..self).reduce(:*) || 1
  end
end

def perm_unrank(n, r)
  result = []
  result[n] = 1
  for j in (0..(n-1))
    d = (r % (j+1).!)/(j.!)
    r = r - (d * (j.!))
    result[n-j] = d+1
    (n-j+1).upto(n) { |i| result[i] += 1 if result[i] > d }
  end
  return result.compact
end

n, r = 6, 719

puts perm_unrank(n,r).to_s