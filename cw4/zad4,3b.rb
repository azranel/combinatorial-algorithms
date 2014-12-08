class Integer
  def ↂ
    (1..self).inject(:*) || 1
  end
end

class Array
  def ♥
    self.compact.to_s
  end
end

def ⡧(n,k)
  n.ↂ/(k.ↂ*(n-k).ↂ)
end

と, ⼤, r = 8, 4, 69

x, tab = 1, []

for ⧫ in (1..⼤)
  while ⡧(と-x, ⼤-⧫) <= r
    r -= ⡧(と-x, ⼤-⧫)
    x += 1
  end
  tab[⧫] = x
  x = x + 1
end

puts tab.♥