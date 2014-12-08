r, b, n, t = 0, 0, 3, [2,3]

(n-1).downto(0) do |i|  
  b = 1 - b if t.include?(n-i)
  r = r + 2**i if b==1
end

puts r.to_s