#!/usr/bin/env ruby

m, n, t = 5, 10, [[9,10],[1,2,6],[4],[3,8],[5,7]]

f = []

n.times { |n| f << 0  }

j = 0

for i in 1..m
  while f[j]!=0 && j<=n
    j += 1
  end

  h = 0
  while !(t[h].include?(j+1))
    h += 1
  end
  
  t[h].each do |g|
    f[g-1] = i if f[g-1] > i || f[g-1]==0
  end
end

puts f.to_s