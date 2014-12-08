m, n = 8, 8


s = []
(m+1).times { s << [0] }
s[0] = [1]
for i in (1..m)
  for j in (1..i)
    s[i][j] = 
      case 
      when i == j then 1
      when i+1 == j then 0
      when j == 1 then 1
      else j*s[i-1][j] + s[i-1][j-1]
      end
  end
end
s.each do |table|
  table = table.join("\t")
  puts table
end