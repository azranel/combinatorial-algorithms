#!/usr/bin/env ruby

n, $k = 10, 9

$tab = []
$partition_result = []

def conjugate(tab)
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
  
  puts result.compact[0...$k].to_s
end


# Funkcja z zadania 3
def partition(n,b,m)
  if n == 0
    # Sprzeżenie podziału liczby
    conjugate($tab[0..m].compact.clone)
  else
    for i in (1..[b,n].min)
      $tab[m+1] = i
      partition(n-i,i,m+1)
    end
  end
end

$tab[0] = n
partition(n-$k,$k,1)
