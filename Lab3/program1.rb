#Variant 8

def task_a(a, b)
  not (a or b) and (a and not b)
end

def task_b(a, b, c, x, y, z)
  ((z != y).object_id <= (6 >= y).object_id) and a or b and c and x >= 1.5
end

def task_c(x, y, z)
  (8 - x * 2 <= z) and (x ** 2 >= y ** 2) or (z >= 15)
end

def task_d(x, y, z)
  x > 0 and y < 0 or z >= (x * y + (-y / x) + (-z) * -2)
end

def task_e(a, b, c)
  not(a or b and not(c or (not a or b)))
end

def task_g(x, y)
  x ** 2 + y ** 2 >= 1 and x >= 0 and y >= 0
end

def task_h(a, b, c)
  (a and (c and b != b or a) or c) and b
end

def task_2(n , m, p , q)
  (p and q) == not(not p or not q) and (m ** 2 + n ** 2 < 4) and (m + n < 1)
end

a = false
b = false
c = true
x = 1
y = 16
z = -40

print task_a(a, b).to_s + "\n"
print task_b(a, b, c, x, y, z).to_s + "\n"
print task_c(x, y, z).to_s + "\n"
print task_d(x, y, z).to_s + "\n"
print task_e(a, b, c).to_s + "\n"
print task_g(x, y).to_s + "\n"
print task_h(a, b, c).to_s + "\n"

n = -2
m = 1
p = true
q = true

print task_2(n, m, p, q).to_s + "\n"
