#!/usr/bin/env ruby

$tab = []
$partition_result = []

def partition(n,b,m)
	if n==0
		$partition_result << $tab[0..m].compact.clone
	else
		for i in (1..[b,n].min)
			$tab[m+1] = i
			partition(n-i,i,m+1)
		end
	end
end

n, k = 7, 2

partition(n,n,0)

#puts $partition_result.to_s

$partition_result.select { |part| part.size == k }.each do |e|
	puts e.join(' + ')
end