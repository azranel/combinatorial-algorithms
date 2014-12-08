def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

t = [1,2,3,8]
k, r = t.size, 0

for i in (0...k) do
  r += ((-1)**(k-i+1)) * newton_symbol(t[i], i+1)
end

r -= 1 if k.odd?
puts r.to_s