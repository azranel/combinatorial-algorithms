#!/usr/bin/env ruby

$tab = []

def partition(n,b,m)
	if n==0
		puts $tab[0..m].compact.to_s
	else
		for i in (1..[b,n].min)
			$tab[m+1] = i
			partition(n-i,i,m+1)
		end
	end
end

partition(7,7,0)