#!/usr/bin/env ruby
def podzial(blok, n)
  t = []
  n.times { t << [] }
  for i in 1...blok.size
    t[blok[i] - 1] << i
  end
  t.delete([])
  return t
end

n = 4

nast, poprz, blok, pr, j = [nil], [nil], [nil], [nil], n

n.times do 
  blok << 1
  pr << true
end

nast[1] = 0
puts podzial(blok, n).to_s


j = n

while j > 1

  k = blok[j]
  if pr[j]
    if nast[k] == 0
      nast[k] = j
      poprz[j] = k
      nast[j] = 0
    else
      if nast[k] > j
        poprz[j] = k
        nast[j] = nast[k]
        poprz[nast[j]] = j
        nast[k] = j
      end
    end
    blok[j] = nast[k]
  else
    blok[j] = poprz[k]
    if k == j
      if nast[k] == 0
        nast[poprz[k]] = 0
      else
        nast[poprz[k]] = nast[k]
        poprz[nast[k]] = poprz[k]
      end
    end
  end
  puts podzial(blok, n).to_s
  j = n
  while (j>1) && ((pr[j] && blok[j]==j) || ((!pr[j]) && blok[j]==1))
    pr[j] = !pr[j]
    j -= 1
  end
end
