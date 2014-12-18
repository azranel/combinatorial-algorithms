#!/usr/bin/env ruby

n, k = 7, 2

$tab = []
$partition_result = []

# Funkcja z zadania 3
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

partition(n,n,0)

# Funkcja z zadania 2
$partition_result.each do |tab|
  # Zrobione tak żeby tablica na samym pcozątku miała nila; umożliwia indeksowanie od 1
  tab = tab.unshift(nil)
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

  # Wypisywanie tylko tych które mają rozmiar równy k
  puts result.compact.to_s if result.compact.size==k
end
