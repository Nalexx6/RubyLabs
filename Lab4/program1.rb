#Variant 8

def func(c)
  d = []
  duplications = {}
  (0..c.size - 1).each { |i|
    if !duplications.key?(c[i])
      duplications[c[i]] = 1
    else
      duplications[c[i]] += 1
    end
  }
  indexes_dict = {}
  (0..c.size - 1).each { |i|
    if duplications[c[i]] == 1
      d.push(c[i])
    else
      if indexes_dict.key?(c[i])
        d.push(indexes_dict[c[i]])
        indexes_dict[c[i]] += 1
      else
        d.push(1)
        indexes_dict[c[i]] = 2
      end
    end
  }

  d

end

def norm(x)
  s = x.inject(0){ |res, elem| res + (elem * elem)}
  s ** (0.5)
end

def gauss
  n = gets.chomp.to_i
  if n < 3 || n > 9
    raise "N is out of bounds"
  end

  b = Array.new(n){|index| index + 1}
  a = (0..n - 1).map{Array.new(n - 1)}
  (0..n - 1).each do |i|
    (0..n - 1).each do |j|
      if i == j
        a[i][j] = 2.0
      else
        a[i][j] = 3.0
      end
    end
  end

  # puts a.map(&:inspect), "\n"


  (0..n - 1).each do |i|
    coef = a[i][i]
    (0..n - 1).each do |j|
      a[i][j] /= coef
    end
    b[i] /= coef
    (0..n - 1).each do |j|
      if j != i
        coef1 = a[j][i] / a[i][i]
        (0..n - 1).each do |k|
          a[j][k] -= a[i][k] * coef1
        end
        b[j] -= b[i] * coef1
      end
    end
  end

  puts a.map(&:inspect), "\n"

  b

end

c = [1, 2, 3, 4, 5, 6, 7, 8, 1, 2, 3, 3, 4, 5, 5, 5]
x = [1, -2, 2]

print func(c), "\n"
print norm(x), "\n"
print gauss, "\n"
