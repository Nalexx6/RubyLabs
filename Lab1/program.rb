#Variant 8

print "Enter x: "
input_x = gets.chomp

print "Enter y: "
input_y = gets.chomp

print "Enter b: "
input_b = gets.chomp

x = input_x.to_f
y = input_y.to_f
b = input_b.to_f

res = Math.acos(Math.sin(x/2) / ((b - 1) ** 1/3)) +
      Math.log(Math.exp(y) + 4.1 * (10 ** 2.1)) / Math.tan(Math::PI / 4 + x / 2)

print "Res is : " + res.to_s
