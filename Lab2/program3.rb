#Variant 8

$binary = "1100111100"
$res = 0

(0..$binary.size - 1).each { |i|
  $res += $binary[$binary.size - 1 - i] == '1' ? 2 ** i : 0
}

print "Res is: " + $res.to_s
