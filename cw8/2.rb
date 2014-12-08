class Integer
  def !
    (1..self).reduce(:*) || 1
  end
end

def perm_rank(n,π)
  r, temp = 0, π.clone
  temp.unshift(0)
  for j in (1..n)
    r += (temp[j]-1)*((n-j).!)
    for i in (j+1..n)
      # puts "#{ i } #{ j }"
      temp[i] -= 1 if temp[i] > temp[j] 
    end
  end
  return r
end

n, π = 6, [6,5,4,3,2,1]

puts perm_rank(n,π).to_s