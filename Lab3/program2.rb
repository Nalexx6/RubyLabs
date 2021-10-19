def expr_if(x)
  if x > -4.0 and x <= 0.0
    return ((x-2).abs / (x ** 2 * Math.cos(x))) ** (1 / 7.0)
  end

  if x > 0 and x <= 12
    return 1 / (Math.tan(x + Math.exp(-x)) / Math.sin(x) ** 2) ** (7 / 2).to_f
  end

  if x < -4 or x > 12
    return 1 / (1 + x / (1 + x / (1 + x)))
  end
end

def expr_case(x)
  case x
    when -4..0
      return ((x-2).abs / (x ** 2 * Math.cos(x))) ** (1 / 7.0)
    when 0..13
      return 1 / (Math.tan(x + Math.exp(-x)) / Math.sin(x) ** 2) ** (7 / 2).to_f
    else
      return 1 / (1 + x / (1 + x / (1 + x)))
  end
end

print expr_if(2).to_s + " " + expr_case(2).to_s