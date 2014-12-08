def perm_nast(n, π)
  π.unshift(0)
  i, temp = n - 1, []
  while π[i+1]<π[i]; i -= 1 end
  return "Brak następnika" if i==0
  j = n
  while π[j]<π[i]; j -= 1 end
  π[i], π[j] = π[j], π[i]
  (i+1).upto(n) { |h| temp[h] = π[h] }
  (i+1).upto(n) { |h| π[h] = temp[n+i+1-h] }
  π.shift #Deleting π[0] which is unshifted at beginning
  return π
end

n, π = 6, [6,5,4,3,2,1]

puts perm_nast(n,π).to_s