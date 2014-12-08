r, n = 2, 3

bin = ("%0#{n}b" % r).split("").map { |e| e.to_i }
bin.unshift(0)
a = Array.new(n)

for i in (1..n)
  a[i-1] = (bin[i]!=bin[i-1]) ? 1 : 0
end

result = []
a.each_with_index { |e, i| result << i+1 if e==1 }
puts result.to_s