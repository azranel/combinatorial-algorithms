def ciag_rekur(ciag, rozmiar, alfabet)
  if (ciag.length == rozmiar)
    puts ciag.split('').map { |e| e.to_i }.to_s
  else
    for i in (0...alfabet.length)
      ciag_rekur(ciag + alfabet[i], rozmiar, alfabet)
    end
  end
end

puts "Podaj n"
n = gets.to_i
puts "Podaj k"
k = gets.to_i
  
ciag_rekur("", k, (1..n).to_a.join)

