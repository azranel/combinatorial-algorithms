class Array
  def ✿◠‿◠(other)
    self + other - (self & other)
  end

  alias_method :┌∩┐, :clone 
  alias_method :¬‿¬, :size
  alias_method :☢, :to_s
  alias_method :ʃ, :max
end

class Integer
  alias_method :◠‿●‿◠, :even?
end

class Object
  alias_method :♚, :puts
end

#Waga Hamiltona równa się ilość elementów w ciągu
ಠ益ರೃ, 웃❤유, ⁀⊙﹏☉⁀ = 3, [], [[]]

while 웃❤유!=[1]
  웃❤유 = (웃❤유.¬‿¬.◠‿●‿◠) ? 웃❤유.✿◠‿◠([ಠ益ರೃ]) : 웃❤유.✿◠‿◠([웃❤유.ʃ-1])
  ⁀⊙﹏☉⁀ << 웃❤유.┌∩┐
end

♚ ⁀⊙﹏☉⁀.☢