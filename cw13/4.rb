#!/usr/bin/env ruby

# Dane do wprowadzenia
n, r = 5, 39

l = [nil]

(n - 2).downto(1) do |i|
  l[i] = (r % n) + 1
  r = ((r - l[i] + 1) / n)
end

puts l.compact.to_s
