#!/usr/bin/env ruby

r = 20912
n = 4

podst = n**2

wartosci, macierz = [nil], [nil]
while r != 0
  wartosci << "%0#{ n }b" % (r % podst)
  r = r / podst
end

j = n

n.downto(1) do |i|
  macierz << wartosci[j].chars
  for x in 0...macierz.last.size
    macierz.last[x] = macierz.last[x].to_i
  end
  j -= 1
end

e = []

for i in 1..n
  for j in 0...n
    e << [i, j+1] if macierz[i][j]==1
  end
end

puts e.to_s
