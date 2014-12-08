puts "Podaj range"
ranga = gets.to_i
puts "Podaj n"
n = gets.to_i

t = []

i = n
while i>=1
  t.push(i) if ranga%2==1
  ranga, i = ranga/2, i-1
end

puts t.to_s