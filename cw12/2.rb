#!/usr/bin/env ruby

# nil jako pierwszy element żeby iterować od indeksu 1
tab = [nil, 6,3,3,2,1]

result = [nil]
for i in (1..tab[1])
	result[i] = 1
end

nprim = tab[1]

for j in (2..tab.size-1)
	for i in (1..tab[j])
		result[i] += 1
	end
end

puts result[1..nprim]