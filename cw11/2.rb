#!/usr/bin/env ruby
m, f = 10, [nil, 1,1,2,3,4,1,4,2,5,5]

n, t = 1, []

(1..m).each { |j| n = f[j] if f[j] > n }
(0...n).each { |i| t[i] = [] }
(1..m).each { |j| t[f[j] - 1] << j }

puts t.to_s
