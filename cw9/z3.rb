def newton_symbol(n, k)
  (((n - k + 1)..n).inject(:*) || 1) / ((1..k).inject(:*) || 1)
end

m = 8
b = [1]

(1..m).each do |i|
  b[i] = 0
  (0..i - 1).each do |j|
    b[i] += newton_symbol(i - 1, j) * b[j]
  end
end

puts b[1...b.size].join("\t")
