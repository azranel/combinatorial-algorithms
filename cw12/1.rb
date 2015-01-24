#!/usr/bin/env ruby

n, k = 7, 4
tab = []

(n+1).times { tab << [] }

for i in (0..n)
	for j in (0..k)
	  case
		when i==0 && j==0 then tab[i][j] = 1
		when i>0 && j==0 then tab[i][j] = 0
		when j>i then tab[i][j] = 0
		when i==j then tab[i][j] = 1
		when k<=n then tab[i][j] = tab[i-1][j-1] + tab[i-j][j]
		end
	end
end

puts tab[n][k]
