#!/usr/bin/env ruby

l = [nil, 2, 3, 5]
n = l.size + 1

r, p = 0, 1

(n - 2).downto(1) do |i|
  r += p * (l[i] - 1)
  p *= n
end

puts r
