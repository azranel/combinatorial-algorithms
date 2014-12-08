def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

n, k, r = 10, 4, 147

x, t = n, []

k.downto(1) do |i|
  while newton_symbol(x, i) > r
    x = x - 1
  end
  t[i-1] = x+1
  r = newton_symbol(x+1, i)-r-1
end

puts t.to_s