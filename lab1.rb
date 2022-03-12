#Jacob Zorniak
puts "Hello world"

x = -5
if x < 0
  puts "negative"
else
  puts "positive"
end

x = 10
while x > 0
  puts x if x.even?
  x -= 1 
end

r = rand(100)
case
when r.even?
  print r, " is even\n"
when r < 10
  print r, " is small\n"
else
  print r, " is big and odd\n"
end

puts self, self.class

def genArray(n = 10)
  (1..n).to_a
end
def genArr(a, n)
  if n < 1
    return a 
  else 
    a[n] = n
    n -= 1
    genArr(a, n)
  end
end
print genArray(10), "\n"
print genArray(), "\n"
print genArray, "\n"
print genArr(Array.new(10), 10), "\n"
