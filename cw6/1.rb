def newton_symbol(n,k)
  (((n-k+1)..n).inject(:*) || 1)/((1..k).inject(:*) || 1)
end

n, k = 3, 2

t = []
(n+1).times { t << [] }

for i in (0..n)
  for j in (0..i)
    t[i] << []
    #newton_symbol(i,j).times { t[i][j] << [] }
  end
end

t[0][0] << []

for i in (1..n)
  for j in (0..i)
    # puts "i=#{i}, j=#{j}"
    ad = t[i-1][j]
    ad = [] if ad.nil?
    rev = []
    puts t[i-1][j-1].size
    t[i-1][j-1].each do |single|
      # puts i.to_s
      rev << [(single + [i])]
    end

    t[i][j] << ad + rev.reverse
  end
end

puts t.to_s
# puts "LOL"
puts t[1][1].to_s
