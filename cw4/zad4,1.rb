n, t = 8, [1,2,3,8]

k, u = t.size - 1, t.clone
i = k

while (i >= 0) && (t[i]==n-k+i) do i = i - 1 end
  
if i != -1
  for j in (i..k)
    u[j] = t[i]+1+j-i
  end
  puts u.to_s
else
  puts "Nie ma następnika"
end