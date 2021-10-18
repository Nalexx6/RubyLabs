#Variant 8

def dec2bin(number)
  number = Integer(number)
  if number == 0 then 0 end

  ret_bin = ""
  while number != 0
    ret_bin = String(number % 2) + ret_bin
    number = number / 2
  end
  ret_bin
end

print "Res is:" + dec2bin(828).to_s