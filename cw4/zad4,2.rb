def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

n, t = 8, [5,6,7,8]

k, r = t.size, 0
t.unshift 0 #t0 = 0


for i in (1..k)
  if t[i-1]+1 <= t[i]-1
    for j in (t[i-1]+1..t[i]-1)
      r = r + newton_symbol(n-j,k-i)
    end
  end
end

puts r.to_s