#
# CS 430 Spring 2019 P1 (Ruby 1)
#
# Name: Jacob Zorniak
#

# return an array of all factors of n
def factors (n)
  (1..n).to_a.select { |x| n % x == 0 }
end

# return an array of all prime numbers less than or equal to n
def primes (n)
  (2..n).to_a.select { |x| factors(x).length <= 2 }
end

# return an array of all prime factors of n
def prime_factors (n)
  primes(n).select { |x| n % x == 0 } 
end

# return an array of all perfect numbers less than or equal to n
def perfects (n)
  (0..n).to_a.select { |x| factors(x).inject(:+) == 2 * x } 
end

# return an array of Pythagorean triples whose elements are less than or equal to n
def pythagoreans (n)
  (0..n).to_a.combination(3).to_a.select { |x| x[0] ** 2 + x[1] ** 2 == x[2] ** 2 }
end
