#!/usr/bin/env ruby

m = 5
f = []
fmax = []

for i in 1..m
  f[i] = 1
  fmax[i] = 2
end

done = false

while !done
  puts f.compact.to_s
  j = m + 1
  until f[j]!=fmax[j]
    j = j - 1
  end
  if j > 1
    f[j] += 1
    for i in (j+1..m)
      f[i] = 1
      fmax[i] = case
          when f[j] == fmax[j] then fmax[j] + 1
          else fmax[j]
      end
      # fmax[i] = (f[j] == fmax[j]) ? fmax[j] + 1 : fmax[j]
    end
  else
    done = true
  end
end
