puts "Podaj n"
n = gets.to_i
puts "Podaj k"
k = gets.to_i

result = []
war = Array.new(k, 1)
i = k-1

while i > -1
  i = k-1
  result << war.clone
  while (i > -1) && (war[i]==n)
    war[i] = 1
    i -= 1
  end
  war[i]+=1 if i > -1
end

result.each do |single|
  puts single.to_s
end