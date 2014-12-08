def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

r, k, t = 0, 0, []

for i in (1..k)
  r += newton_symbol(t[i-1]-1, k-i+1)
end

puts r.to_s