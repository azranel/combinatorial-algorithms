#!/usr/bin/env ruby

# Dane do wprowadzenia (t - krawędzie grafu)
n, t = 5, [[1, 2], [1, 3], [3, 4], [2, 5]]


d, l = [nil], [nil]

# Krok 1
1.upto(n) { |i| d[i] = 0 }

t.each do |e|
  d[e.first] += 1
  d[e.last] += 1
end

# Kroki 2-5
(n-2).downto(1) do |i|
  x = n
  while d[x] != 1
    x -= 1
  end

  y = n
  while !(t.include?([x, y]) || t.include?([y, x]))
    y -= 1
  end

  l[i] = y
  t.delete([x, y])
  d[x] -= 1
  d[y] -= 1
end

# Krok 6
puts l.compact.to_s
