#exponent 1
def exp(base, exponent)
  return 1 if exponent == 0
  base * exp(base , exponent - 1)
end
#exponent 1
def exp2(base, exponent)
  return 1 if exponent == 0
  return base if exponent == 1
  if exponent.even?
    exp2(base , exponent/2) ** 2
  else
    base  * (exp2(base, (exponent - 1) / 2) ** 2)
  end
end

p exp(0,0) == 1
p exp(0,1) == 0
p exp(1,0) == 1
p exp(1,1) == 1
p exp(1,2) == 1
p exp(2,0) == 1
p exp(2,1) == 2
p exp(2,2) == 4

p exp2(0,0) == 1
p exp2(0,1) == 0
p exp2(1,0) == 1
p exp2(1,1) == 1
p exp2(1,2) == 1
p exp2(2,0) == 1
p exp2(2,1) == 2
p exp2(2,2) == 4
