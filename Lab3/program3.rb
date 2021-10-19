#Variants 2, 3

def task_2
  res = 0
  (0..9).each { |i|
    res += 1.0 / (3 ** i)
  }

  res
end

def task_3(x)
  print "Enter n: "
  n = gets.chomp.to_i

  res = 0
  factorial = 1
  (0..n + 1).each { |i|
    res += (x.to_f ** i) / factorial
    factorial *= (i + 1)
  }

  res
end

print task_2.to_s + "\n"
print task_3(1).to_s + "\n"
