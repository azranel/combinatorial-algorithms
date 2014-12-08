def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

n, k, r = 9, 5, 119

x, tab = 1, []

for i in (1..k)
  while newton_symbol(n-x, k-i) <= r
    r -= newton_symbol(n-x, k-i)
    x += 1
  end
  puts newton_symbol(n-x, k-i)
  tab[i] = x
  x = x + 1
end

puts tab.compact.to_s
