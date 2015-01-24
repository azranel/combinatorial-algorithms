#!/usr/bin/env ruby

n = 4
e = [[1, 2], [1, 4], [2, 4], [3, 1], [3, 3], [3, 4]]

macierz = [nil]
n.times { macierz << [nil] }
for i in 1..n
  temp = []
  for j in 0...e.size
    temp << e[j] if e[j].include?(i)
  end
  # puts temp.to_s
  temp.each do |t|
    macierz[t.first][t.last] = 1
  end
end

for i in 1...macierz.size
  for j in 1..n
    macierz[i][j] = 0 if macierz[i][j].nil?
  end
end
r = 0
podst = n**2
for i in 1..n
  t = 0
  for j in 1..n
    t += macierz[i][j] * 2**(n - j)
  end
  r += t * podst**(n - i)
end

puts r.to_s

