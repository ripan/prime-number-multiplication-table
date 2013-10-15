require 'prime'

class PrimeNumber
  def self.first(count)
    primes = []
    i = 0
    while primes.size < count  do
      primes << i if i.is_prime?
      i +=1
    end
    return primes
  end  
end

class Integer < Numeric
  def is_prime?
    return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self%x == 0
    end
    true
  end
end

