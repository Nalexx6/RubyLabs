#Variant 8

$pi = 3.141
$N = 10
$c = 50

def y_function(x)
  begin
    return 2 * Math.sqrt(1 + (1/x) * (Math.sqrt(1/x - Math.sqrt(x))) ** 2) /
    (Math.sqrt(1 + (1/$N) * (Math.sqrt(1/x - Math.sqrt(x)))) - 0.5 * Math.sqrt(1/x - Math.sqrt($N)))
  rescue
    return 0
  end
end

def z_function(x)
  ((Math.sin(x) ** 2 + Math.tan(x) ** 2) ** $c + 1) * (Math.cos(x) ** 2 -  (1/Math.tan(x)) ** 2 + 1) /
    ((Math.cos(x) ** 2 + (1/Math.tan(x)) ** 2 + 1) * (Math.sin(x) ** 2 + (1/Math.tan(x)) ** 2 - 1))
end

def y_tab
  res = {}
  (1..$N).step(($N - 1).to_f / ($N + $c)) do |i|
    puts i
    res[i] = y_function(i)
  end
  res
end

def z_tab
  res = {}
  i = $pi / $N
  delta = ($pi - $pi / $N) / ((3.0/2)*$N + $c)
  while i <= $pi do
    res[i] = z_function(i)
    i += delta
  end

  res
end

def y_z_tab
  res = {}
  (2..$c).step(($c - 2).to_f / (2*$N)) do |j|
    if j > 2 && j < $N
      res[j] = y_function(j)
    elsif j > $N && j < 2*$N
      res[j] = z_function(j)
    else
      res[j] = y_function(j) + z_function(j)
    end
  end

  res
end

def print_result(dict)
  dict.each { |i|
    print i.to_s + ": " + dict[i].to_s + "\n"
  }

  print "\n"
end


print "__Y_TABULATION__\n"
print_result(y_tab)
print "__Z_TABULATION__\n"
print_result(z_tab)
print "__Y_Z_TABULATION__\n"
print_result(y_z_tab)
