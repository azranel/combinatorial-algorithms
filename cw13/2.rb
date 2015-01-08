#!/usr/bin/env ruby

# Dane do wprowadzenia to tylko kod Prufera z nilem na początku
l = [nil, 1, 4, 1, 8, 8, 6]

# Ilość wirzchołków jest uzupełniania automatycznie
n = l.size + 1

e = []
d = [nil]

# Krok 2
1.upto(n) do |i|
  d[i] = l.count(i) + 1
end
l << 1

1.upto(n-1) do |i|
  # Krok 3 i 4
  x = n
  while d[x] != 1
    x -= 1
  end

  y = l[i]
  d[x] -= 1
  d[y] -= 1
  e << [y, x]
end

puts e.to_s