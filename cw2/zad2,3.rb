#!/usr/bin/env ruby

n, podzbior, ranga = 4, [3,4], 0

for i in podzbior
  ranga += 2**(n-i)
end

puts ranga.to_s