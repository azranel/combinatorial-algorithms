
def generuj(t, k, x)
  if t==k
    puts x.to_s
  else
    for j in (0...k)
      x[t]=j
      generuj(t+1, k, x)
    end
  end
end

puts "Podaj n"
n = gets.to_i
puts "Podaj k"
k = gets.to_i

generuj(0, k, [])