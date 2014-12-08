def unrank(ranga, n)
  return (ranga%2).to_s if n==1
  m = 2**(n-1)
  if ranga < m
    return '0' + unrank(ranga, n-1)
  end
  return '1' + unrank(m - (ranga % m) - 1, n - 1)
end

r, n = 5, 3
puts unrank(r,n)