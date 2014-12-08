
n = 1
puts "Podaj n"
k = gets.to_i

ciagi_binarne = []
podzbiory = []
war = Array.new(k, 0)
i = k-1

#tworzenie ciągów binarnych
while i > -1
  i = k-1
  ciagi_binarne << war.clone
  while (i > -1) && (war[i]==n)
    war[i] = 0
    i -= 1
  end
  war[i]+=1 if i > -1
end

#zamiana ciągów binarnych na podzbiory zbioru (1,2,...,n)
ciagi_binarne.each do |single|
  pomost = single.each_with_index.map { |e, i| (i + 1) if e==1 }
  pomost.delete(nil)
  podzbiory << pomost
  #puts pomost.to_s
end

podzbiory.sort_by!(&:length)
#podzbiory.unshift(nil)
podzbiory.each do |single|
  puts single.to_s
end