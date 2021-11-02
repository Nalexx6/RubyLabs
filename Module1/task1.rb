#Variant

def f(x, a, b, c)
  if x < 3 && b != 0
    return a * x**2 - b * x + c
  end

  if x > 3 && b == 0
    return (x - a) / (x - c)
  end

  x / c
end

def func(a, b, c, x_f, x_l, dx)
  if !(a.truncate || b.truncate) && ((a.truncate + c.truncate) % 2)
    a = a.truncate
    b = b.truncate
    c = c.truncate
    x_f = x_f.truncate
    x_l = x_l.truncate
    dx = dx.truncate
  end

  (x_f..x_l).step(dx.to_f).each do |i|
      puts i.to_s + " : " + f(i, a, b, c)
  end
end

a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
x_f = gets.chomp.to_f
x_l = gets.chomp.to_f
dx = gets.chomp.to_f

func(a, b, c, x_f, x_l, dx)