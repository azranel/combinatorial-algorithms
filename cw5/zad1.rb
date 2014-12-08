n, t = 7, []

# Szukamy indeks od prawej do lewej który możemy zwiększyć
i = t.size-1
if t.size > 0
  while (t[i-1]-t[i]==1) and (i!=0)
    i -= 1
  end
end

# Wartownik (sprawdzamy czy ostatni indeks jest równy pierwszemu i czy ten element jest równy max (czyli n)
if (i==0 && t[i]==n) || (t.size == 0)
  puts "Nie ma nastepnika"
else
  # Jesli nie jest to zwiększamy ten nasz indeks o jeden a każdy element po prawej dajemy na minimalne wartosci
  t[i]+=1
  for j in (i+1...t.size)
    t[j] = t.size-j
  end
  puts t.to_s
end
