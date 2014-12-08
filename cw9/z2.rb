m = 8

s = []
(m + 1).times { s << [0] }
s[0] = [1]
(1..m).each do |i|
  (1..i).each do |j|
    s[i][j] =
      case
      when i == j then 1
      when i + 1 == j then 0
      else s[i - 1][j - 1] - (i - 1) * s[i - 1][j]
      end
  end
end

s.each do |table|
  table = table.join("\t")
  puts table
end
