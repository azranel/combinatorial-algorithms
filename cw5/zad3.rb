def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

t, r, k, n = [], 49, 4, 8

x = n

for i in (1..k)
  while newton_symbol(x,k+1-i) > r
    x -= 1
  end
  t[i-1] = x + 1
  r = r - newton_symbol(x, k+1-i)
end

puts t.to_s