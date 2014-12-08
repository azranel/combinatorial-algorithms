class Array
  def xor(other)
    self + other - (self & other)
  end
end

#Zaczynamy od kodu Greya (0,0,0,...,0,0) a kończymy na (1,0,0,...,0,0)
#Waga Hamiltona równa się ilość elementów w ciągu
n, t, result = 4, [], [[]]

while t!=[1]
  # Jeśli rozmiar jest parzysty to robimy różnicę symetryczną z największym elementem
  # Inaczej robimy różnicę symetryczną z największym elementem-1
  t = (t.size.even?) ? t.xor([n]) : t.xor([t.max-1])
  result << t.clone
end

puts result.to_s
