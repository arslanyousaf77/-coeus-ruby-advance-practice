a = "hi there"
b = a
a = "not here"
puts a
puts b

x = "hi there"
y = x
x << ", Bob"
puts x
puts y

d = [1, 2, 3, 3]
e = d
f = d.uniq
print d
print e
print f, "\n"

def test(b)
    b.map! {|letter| "I like the letter: #{letter}"}
end
  
  a = ['a', 'b', 'c']
  test(a)
  print a,"\n"

